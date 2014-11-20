/*
 * main.c
 *
 *  Created on: 2013. 3. 9.
 *      Author: Peter Yoo
 */

/***************************** Include Files **********************************/
#include "xparameters.h"
#include "xiicps.h"
#include "xil_printf.h"

/************************** Constant Definitions ******************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define IIC_DEVICE_ID		XPAR_PS7_I2C_1_DEVICE_ID

/* The slave address to send to and receive from.
 */
/*
 * The slave address to send to and receive from.
 */
#define IIC_SLAVE_ADDR		0x38
//#define IIC_SLAVE_ADDR		0x39
//#define IIC_SLAVE_ADDR		0x3a
//#define IIC_SLAVE_ADDR		0x3b


#define IIC_SCLK_RATE				100000

// 0x4000~0x40FA
#define REG_ADDR_BYTE	2

/*
 * The page size determines how much data should be written at a time.
 * The write function should be called with this as a maximum byte count.
 */
#define PAGE_SIZE		16

/**************************** Type Definitions ********************************/

/************************** Function Prototypes *******************************/
int WriteDatafromadau1761(u16 ByteCount);
int ReadDatafromadau1761(u16 ByteCount);

int IICWriteData(u8 SlaveAddr, u16 ByteCount);
int IICReadData(u8 SlaveAddr, u16 ByteCount);

/************************** Variable Definitions ******************************/
/*
 * Write buffer for writing a page.
 */
u8 WriteBuffer[sizeof(u16) + PAGE_SIZE];

u8 ReadBuffer[PAGE_SIZE];
XIicPs Iic;				/* Instance of the IIC Device */


/************************** Function Prototypes *******************************/
int TransmitFifoFill(XIicPs *InstancePtr);
int IicPsMasterPolledExample(u16 DeviceId);
/************************** Variable Definitions ******************************/

XIicPs Iic;		/**< Instance of the IIC Device */

/******************************************************************************/
/**
*
* Main function to call the polled master example.
*
* @param	None.
*
* @return	XST_SUCCESS if successful, XST_FAILURE if unsuccessful.
*
* @note		None.
*
*******************************************************************************/
int main(void)
{
	int Status;
	XIicPs_Config *Config;
	unsigned long i;

	xil_printf("ADAU1761 CLK 12.288MHz Test \r\n\r\n");

	/*
	 * Initialize the IIC driver so that it's ready to use
	 * Look up the configuration in the config table,
	 * then initialize it.
	 */
	Config = XIicPs_LookupConfig(XPAR_PS7_I2C_1_DEVICE_ID);
	if (NULL == Config) {
		return XST_FAILURE;
	}

	Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Set the IIC serial clock rate.
	 */
	XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);


	/***********************************************/
	// Disable Core CLK
	/***********************************************/

	// Write
	WriteBuffer[0] = 0x40;
	WriteBuffer[1] = 0x00;
	WriteBuffer[2] = 0x0E;

	Status = WriteDatafromadau1761(3);

	// delay
	for(i=0;i<100;i++);

	// Read
	WriteBuffer[0] = 0x40;
	WriteBuffer[1] = 0x00;

	Status = ReadDatafromadau1761(1);

	xil_printf("R0=%2x\r\n",ReadBuffer[0]);

	/***********************************************/
	// Set PLL
	/***********************************************/

	// Write 6 bytes to R1 @ register address 0x4002
	WriteBuffer[0] = 0x40; // Register write address [15:8]
	WriteBuffer[1] = 0x02; // Register write address [7:0]
	WriteBuffer[2] = 0x00; // xx byte 6 - M[15:8]
	WriteBuffer[3] = 0x00; // xx byte 5 - M[7:0]
	WriteBuffer[4] = 0x00; // xx byte 4 - N[15:8]
	WriteBuffer[5] = 0x00; // xx byte 3 - N[7:0]
	WriteBuffer[6] = 0x20; // byte 2 - 7 = reserved, bits 6:3 = R[3:0], 2:1 = X[1:0], 0 = PLL operation mode
	WriteBuffer[7] = 0x01; // byte 1 - 7:2 = reserved, 1 = PLL Lock, 0 = Core clock enable

	Status = WriteDatafromadau1761(8);

	do{
		// delay
		for(i=0;i<10000;i++);

		// Read
		WriteBuffer[0] = 0x40;
		WriteBuffer[1] = 0x02;

		Status = ReadDatafromadau1761(6);

		xil_printf("R1=%2x %2x %2x %2x %2x %2x \r\n",ReadBuffer[0],ReadBuffer[1],ReadBuffer[2],ReadBuffer[3],ReadBuffer[4],ReadBuffer[5]);
	}while((ReadBuffer[5] & 0x2) == 0);

	xil_printf("PLL Locked\r\n");

	/***********************************************/
	// Enable Core CLK
	/***********************************************/

	// Write
	WriteBuffer[0] = 0x40;
	WriteBuffer[1] = 0x00;
	WriteBuffer[2] = 0x0F;

	Status = WriteDatafromadau1761(3);

	// delay
	for(i=0;i<100;i++);

	// Read
	WriteBuffer[0] = 0x40;
	WriteBuffer[1] = 0x00;

	Status = ReadDatafromadau1761(1);

	xil_printf("R0=%2x\r\n",ReadBuffer[0]);

	/***********************************************/
	/***********************************************/
	/***********************************************/

	if (Status != XST_SUCCESS) {
		xil_printf("\r\nADAU1761 CLK 12.288MHz Test Failed\r\n\r\n");
		return XST_FAILURE;
	}

	xil_printf("\r\nSuccessfully ran ADAU1761 CLK 12.288MHz Test\r\n\r\n");
	return XST_SUCCESS;
}

int WriteDatafromadau1761(u16 ByteCount)
{
	return IICWriteData(IIC_SLAVE_ADDR, ByteCount);
}

int ReadDatafromadau1761(u16 ByteCount)
{
	// write register address
	IICWriteData(IIC_SLAVE_ADDR, REG_ADDR_BYTE);

	// read data
	return IICReadData(IIC_SLAVE_ADDR, ByteCount);
}


/*****************************************************************************/
/**
* This function writes a buffer of data to the IIC .
*
* @param	ByteCount contains the number of bytes in the buffer to be
*		written.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		The Byte count should not exceed the page size of the IIC slave as
*		noted by the constant PAGE_SIZE.
*
******************************************************************************/
int IICWriteData(u8 SlaveAddr, u16 ByteCount)
{
	int Status;

	/*
	 * Send the Data.
	 */
	Status = XIicPs_MasterSendPolled(&Iic, WriteBuffer,
					  ByteCount, SlaveAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(&Iic));

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function reads data from the IIC serial EEPROM into a specified buffer.
*
* @param	BufferPtr contains the address of the data buffer to be filled.
* @param	ByteCount contains the number of bytes in the buffer to be read.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
int IICReadData(u8 SlaveAddr, u16 ByteCount)
{
	int Status;

	/*
	 * Receive the Data.
	 */
	Status = XIicPs_MasterRecvPolled(&Iic, ReadBuffer,
					  ByteCount, SlaveAddr);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Wait until bus is idle to start another transfer.
	 */
	while (XIicPs_BusIsBusy(&Iic));

	return XST_SUCCESS;
}

/*****************************************************************************/
/*
* This function prepares a device to transfers as a master.
*
* @param	InstancePtr is a pointer to the XIicPs instance.
*
* @param	Role specifies whether the device is sending or receiving.
*
* @return
*		- XST_SUCCESS if everything went well.
*		- XST_FAILURE if bus is busy.
*
* @note		Interrupts are always disabled, device which needs to use
*		interrupts needs to setup interrupts after this call.
*
****************************************************************************/
static int XIicPs_SetupMaster(XIicPs *InstancePtr, int Role)
{
	u32 ControlReg;
	u32 BaseAddr;
	u32 EnabledIntr = 0x0;

	Xil_AssertNonvoid(InstancePtr != NULL);

	BaseAddr = InstancePtr->Config.BaseAddress;
	ControlReg = XIicPs_ReadReg(BaseAddr, XIICPS_CR_OFFSET);


	/*
	 * Only check if bus is busy when repeated start option is not set.
	 */
	if ((ControlReg & XIICPS_CR_HOLD_MASK) == 0) {
		if (XIicPs_BusIsBusy(InstancePtr)) {
			return XST_FAILURE;
		}
	}

	/*
	 * Set up master, AckEn, nea and also clear fifo.
	 */
	ControlReg |= XIICPS_CR_ACKEN_MASK | XIICPS_CR_CLR_FIFO_MASK |
		 	XIICPS_CR_NEA_MASK | XIICPS_CR_MS_MASK;

	if (Role == RECVING_ROLE) {
		ControlReg |= XIICPS_CR_RD_WR_MASK;
		EnabledIntr = XIICPS_IXR_DATA_MASK |XIICPS_IXR_RX_OVR_MASK;
	}else {
		ControlReg &= ~XIICPS_CR_RD_WR_MASK;
	}
	EnabledIntr |= XIICPS_IXR_COMP_MASK | XIICPS_IXR_ARB_LOST_MASK;

	XIicPs_WriteReg(BaseAddr, XIICPS_CR_OFFSET, ControlReg);

	XIicPs_DisableAllInterrupts(BaseAddr);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function initiates a polled mode send in master mode.
*
* It sends data to the FIFO and waits for the slave to pick them up.
* If slave fails to remove data from FIFO, the send fails with
* time out.
*
* @param	InstancePtr is a pointer to the XIicPs instance.
* @param	MsgPtr is the pointer to the send buffer.
* @param	ByteCount is the number of bytes to be sent.
* @param	SlaveAddr is the address of the slave we are sending to.
*
* @return
*		- XST_SUCCESS if everything went well.
*		- XST_FAILURE if timed out.
*
* @note		This send routine is for polled mode transfer only.
*
****************************************************************************/
int XIicPs_MasterSendPolled(XIicPs *InstancePtr, u8 *MsgPtr,
		 int ByteCount, u16 SlaveAddr)
{
	u32 IntrStatusReg;
	u32 StatusReg;
	u32 BaseAddr;
	u32 Intrs;

	/*
	 * Assert validates the input arguments.
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(MsgPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(XIICPS_ADDR_MASK >= SlaveAddr);

	BaseAddr = InstancePtr->Config.BaseAddress;
	InstancePtr->SendBufferPtr = MsgPtr;
	InstancePtr->SendByteCount = ByteCount;

	XIicPs_SetupMaster(InstancePtr, SENDING_ROLE);

	XIicPs_WriteReg(BaseAddr, XIICPS_ADDR_OFFSET, SlaveAddr);

	/*
	 * Intrs keeps all the error-related interrupts.
	 */
	Intrs = XIICPS_IXR_ARB_LOST_MASK | XIICPS_IXR_TX_OVR_MASK |
			XIICPS_IXR_TO_MASK | XIICPS_IXR_NACK_MASK;

	/*
	 * Clear the interrupt status register before use it to monitor.
	 */
	IntrStatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_ISR_OFFSET);
	XIicPs_WriteReg(BaseAddr, XIICPS_ISR_OFFSET, IntrStatusReg);

	/*
	 * Transmit first FIFO full of data.
	 */
	TransmitFifoFill(InstancePtr);

	IntrStatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_ISR_OFFSET);

	/*
	 * Continue sending as long as there is more data and
	 * there are no errors.
	 */
	while ((InstancePtr->SendByteCount > 0) &&
		((IntrStatusReg & Intrs) == 0)) {
		StatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_SR_OFFSET);

		/*
		 * Wait until transmit FIFO is empty.
		 */
		if ((StatusReg & XIICPS_SR_TXDV_MASK) != 0) {
			IntrStatusReg = XIicPs_ReadReg(BaseAddr,
					XIICPS_ISR_OFFSET);
			continue;
		}

		/*
		 * Send more data out through transmit FIFO.
		 */
		TransmitFifoFill(InstancePtr);
	}

	/*
	 * Check for completion of transfer.
	 */
	while ((XIicPs_ReadReg(BaseAddr, XIICPS_ISR_OFFSET) &
		XIICPS_IXR_COMP_MASK) != XIICPS_IXR_COMP_MASK);

	/*
	 * If there is an error, tell the caller.
	 */
	if (IntrStatusReg & Intrs) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
* This function initiates a polled mode receive in master mode.
*
* It repeatedly sets the transfer size register so the slave can
* send data to us. It polls the data register for data to come in.
* If slave fails to send us data, it fails with time out.
*
* @param	InstancePtr is a pointer to the XIicPs instance.
* @param	MsgPtr is the pointer to the receive buffer.
* @param	ByteCount is the number of bytes to be received.
* @param	SlaveAddr is the address of the slave we are receiving from.
*
* @return
*		- XST_SUCCESS if everything went well.
*		- XST_FAILURE if timed out.
*
* @note		This receive routine is for polled mode transfer only.
*
****************************************************************************/
int XIicPs_MasterRecvPolled(XIicPs *InstancePtr, u8 *MsgPtr,
				int ByteCount, u16 SlaveAddr)
{
	u32 IntrStatusReg;
	u32 Intrs;
	u32 StatusReg;
	u32 BaseAddr;
	int BytesToRecv;
	int BytesToRead;
	int TransSize;
	int Tmp;

	/*
	 * Assert validates the input arguments.
	 */
	Xil_AssertNonvoid(InstancePtr != NULL);
	Xil_AssertNonvoid(MsgPtr != NULL);
	Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);
	Xil_AssertNonvoid(XIICPS_ADDR_MASK >= SlaveAddr);

	BaseAddr = InstancePtr->Config.BaseAddress;
	InstancePtr->RecvBufferPtr = MsgPtr;
	InstancePtr->RecvByteCount = ByteCount;

	XIicPs_SetupMaster(InstancePtr, RECVING_ROLE);

	XIicPs_WriteReg(BaseAddr, XIICPS_ADDR_OFFSET, SlaveAddr);

	/*
	 * Intrs keeps all the error-related interrupts.
	 */
	Intrs = XIICPS_IXR_ARB_LOST_MASK | XIICPS_IXR_RX_OVR_MASK |
			XIICPS_IXR_RX_UNF_MASK | XIICPS_IXR_TO_MASK |
			XIICPS_IXR_NACK_MASK;

	/*
	 * Clear the interrupt status register before use it to monitor.
	 */
	IntrStatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_ISR_OFFSET);
	XIicPs_WriteReg(BaseAddr, XIICPS_ISR_OFFSET, IntrStatusReg);

	/*
	 * Set up the transfer size register so the slave knows how much
	 * to send to us.
	 */
	if (ByteCount > XIICPS_FIFO_DEPTH) {
		XIicPs_WriteReg(BaseAddr, XIICPS_TRANS_SIZE_OFFSET,
			 XIICPS_FIFO_DEPTH);
	}else {
		XIicPs_WriteReg(BaseAddr, XIICPS_TRANS_SIZE_OFFSET,
			 ByteCount);
	}

	/*
	 * Pull the interrupt status register to find the errors.
	 */
	IntrStatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_ISR_OFFSET);
	while ((InstancePtr->RecvByteCount > 0) &&
			((IntrStatusReg & Intrs) == 0)) {
		StatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_SR_OFFSET);

		/*
		 * If there is no data in the FIFO, check the interrupt
		 * status register for error, and continue.
		 */
		if ((StatusReg & XIICPS_SR_RXDV_MASK) == 0) {
			IntrStatusReg = XIicPs_ReadReg(BaseAddr,
					XIICPS_ISR_OFFSET);
			continue;
		}

		/*
		 * The transfer size register shows how much more data slave
		 * needs to send to us.
		 */
		TransSize = XIicPs_ReadReg(BaseAddr,
		XIICPS_TRANS_SIZE_OFFSET);

		BytesToRead = InstancePtr->RecvByteCount;

		/*
		 * If expected number of bytes is greater than FIFO size,
		 * the master needs to wait for data comes in and set the
		 * transfer size register for slave to send more.
		 */
		if (InstancePtr->RecvByteCount > XIICPS_FIFO_DEPTH) {
			/* wait slave to send data */
			while ((TransSize > 2) &&
				((IntrStatusReg & Intrs) == 0)) {
				TransSize = XIicPs_ReadReg(BaseAddr,
						XIICPS_TRANS_SIZE_OFFSET);
				IntrStatusReg = XIicPs_ReadReg(BaseAddr,
							XIICPS_ISR_OFFSET);
			}

			/*
			 * If timeout happened, it is an error.
			 */
			if (IntrStatusReg & XIICPS_IXR_TO_MASK) {
				return XST_FAILURE;
			}
			TransSize = XIicPs_ReadReg(BaseAddr,
						XIICPS_TRANS_SIZE_OFFSET);

			/*
			 * Take trans size into account of how many more should
			 * be received.
			 */
			BytesToRecv = InstancePtr->RecvByteCount -
					XIICPS_FIFO_DEPTH + TransSize;

			/* Tell slave to send more to us */
			if (BytesToRecv > XIICPS_FIFO_DEPTH) {
				XIicPs_WriteReg(BaseAddr,
					XIICPS_TRANS_SIZE_OFFSET,
					XIICPS_FIFO_DEPTH);
			} else{
				XIicPs_WriteReg(BaseAddr,
					XIICPS_TRANS_SIZE_OFFSET, BytesToRecv);
			}

			BytesToRead = XIICPS_FIFO_DEPTH - TransSize;
		}

		Tmp = 0;
		IntrStatusReg = XIicPs_ReadReg(BaseAddr, XIICPS_ISR_OFFSET);
		while ((Tmp < BytesToRead) &&
				((IntrStatusReg & Intrs) == 0)) {
			StatusReg = XIicPs_ReadReg(BaseAddr,
					XIICPS_SR_OFFSET);
			IntrStatusReg = XIicPs_ReadReg(BaseAddr,
					XIICPS_ISR_OFFSET);

			if ((StatusReg & XIICPS_SR_RXDV_MASK) == 0) {
				/* No data in fifo */
				continue;
			}
			XIicPs_RecvByte(InstancePtr);
			Tmp ++;
		}
	}

	if (IntrStatusReg & Intrs) {
		return XST_FAILURE;
	}

	return XST_SUCCESS;
}
