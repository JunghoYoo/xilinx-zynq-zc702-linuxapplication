// 2015 27th Dec
// ADS 7846 Touch controller Test on baremetal environment
// written by jungho yoo


/***************************** Include Files *********************************/

#include "xparameters.h"	/* EDK generated parameters */
#include "xspips.h"		/* SPI device driver */
#include "xscugic.h"		/* Interrupt controller device driver */
#include "xil_exception.h"
#include "xil_printf.h"
#include "xgpiops.h"
#include "xstatus.h"

/************************** Constant Definitions *****************************/

/*
 * The following constants map to the XPAR parameters created in the
 * xparameters.h file. They are defined here such that a user can easily
 * change all the needed parameters in one place.
 */
#define SPI_DEVICE_ID		XPAR_XSPIPS_0_DEVICE_ID
#define INTC_DEVICE_ID		XPAR_SCUGIC_SINGLE_DEVICE_ID
#define SPI_INTR_ID			XPAR_XSPIPS_0_INTR

#define GPIO_DEVICE_ID  	XPAR_XGPIOPS_0_DEVICE_ID

#define EMIO_GPIO_BANK		XGPIOPS_BANK2  /* EMIO Bank 2 of the GPIO Device */

/*
 * Following constant define the Input and Output pins.
 */
#define EMIO_GPIO_BASE_PIN			54
#define EMIO_PIN_CONV_BUSY			0x00000001	/* EMIO Pin connected to CONV BUSY */
#define EMIO_PIN_PENIRQ				0x00000000	/* EMIO Pin connected to PEN IRQ */

#define GPIO_INPUT_PIN_CONV_BUSY	(EMIO_GPIO_BASE_PIN+EMIO_PIN_CONV_BUSY)	/* EMIO Pin connected to CONV BUSY */
#define GPIO_INPUT_PIN_PENIRQ		(EMIO_GPIO_BASE_PIN+EMIO_PIN_PENIRQ)	/* EMIO Pin connected to PEN IRQ */

#define EMIO_PIN_MASK_CONV_BUSY		0x0000002
#define EMIO_PIN_MASK_PENIRQ		0x0000001

// Differential Reference & No Power Down
#define NUMOFCONTROLBYTE 1
#define NUMOFADCBYTE	 2

// 12bit, differential, Reference is off and ADC is on & penirq enable
#define CONTROL_X_BYTE	0xD0 //1101 0000
#define CONTROL_Y_BYTE	0x90 //1001 0000
#define CONTROL_Z1_BYTE	0xB0 //1011 0000
#define CONTROL_Z2_BYTE	0xC0 //1100 0000

#define PENISPRESSED 	0x1
#define PENISNOTPRESSED 0x0

/**************************** Type Definitions *******************************/

/***************** Macros (Inline Functions) Definitions *********************/

/************************** Function Prototypes ******************************/
static int SetupGPIOInterruptSystem(XScuGic *GicInstancePtr, XGpioPs *Gpio,
				u16 GpioIntrId);

static int SpiSetupIntrSystem(XScuGic *IntcInstancePtr,
			      XSpiPs *SpiInstancePtr, u16 SpiIntrId);

static void SpiDisableIntrSystem(XScuGic *IntcInstancePtr, u16 SpiIntrId);

void SpiHandler(void *CallBackRef, u32 StatusEvent, unsigned int ByteCount);

static void GPIOIntrHandler(void *CallBackRef, u32 Bank, u32 Status);

void ADS7846Read(XSpiPs *SpiPtr, u8 ChannelSelect, u8 *readbuffer);

int ADS7846Intr(XScuGic *IntcInstancePtr, XSpiPs *SpiInstancePtr,
			 u16 SpiDeviceId, u16 SpiIntrId);
int GpioInit(void);

static int GpioGetInput(u32 DeviceId, u32 *DataRead);

void delay(unsigned int time);
/************************** Variable Definitions *****************************/

/*
 * The instances to support the device drivers are global such that the
 * are initialized to zero each time the program runs.  They could be local
 * but should at least be static so they are zeroed.
 */
static XScuGic IntcInstance;
static XSpiPs SpiInstance;

/*
 * The following variables are shared between non-interrupt processing and
 * interrupt processing such that they must be global.
 */
volatile int TransferInProgress;

/*
 * The following variable tracks any errors that occur during interrupt
 * processing
 */
int Error;

/*
 * The following are declared globally so they are zeroed and can be
 * easily accessible from a debugger.
 */
static XGpioPs Gpio;	/* The driver instance for GPIO Device. */

unsigned int PenIsPressed;

/*****************************************************************************/
/**
*
* Main function to call the Spi ADS7846 example.
*
* @param	None
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None
*
******************************************************************************/
int main(void)
{
	int Status;
	u32 DataRead;

	xil_printf("SPI ADS7846 Test \r\n");

	PenIsPressed = PENISNOTPRESSED;

	Status = GpioInit();

	if (Status != XST_SUCCESS) {
		xil_printf("GPIO INIT Failed\r\n");
		return XST_FAILURE;
	}

	/*
	 * Run the Spi ADS7846 Interrupt example.
	 */
	Status = ADS7846Intr(&IntcInstance, &SpiInstance,
				      SPI_DEVICE_ID, SPI_INTR_ID);

	if (Status != XST_SUCCESS) {
		xil_printf("SPI ADS7846 Test Failed\r\n");
		return XST_FAILURE;
	}

	xil_printf("Successfully ran SPI ADS7846 Test\r\n");
	return XST_SUCCESS;
}


void delay(unsigned int time)
{
	unsigned int Count;
	unsigned int index;

	for(index=0;index < time;index++)
	{
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
		for(Count=0;Count < 50000;Count++);
	}
}

/*****************************************************************************/
/**
*
* This function sets up the interrupt system for the example. It enables falling
* edge interrupts for all the pins of bank 0 in the GPIO device.
*
* @param	GicInstancePtr is a pointer to the XScuGic driver Instance.
* @param	GpioInstancePtr contains a pointer to the instance of the GPIO
*		component which is going to be connected to the interrupt
*		controller.
* @param	GpioIntrId is the interrupt Id and is typically
*		XPAR_<GICPS>_<GPIOPS_instance>_VEC_ID value from
*		xparameters.h.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
****************************************************************************/
static int SetupGPIOInterruptSystem(XScuGic *GicInstancePtr, XGpioPs *Gpio,
				u16 GpioIntrId)
{
	int Status;

	XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

	Xil_ExceptionInit();

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(GicInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				GicInstancePtr);

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(GicInstancePtr, GpioIntrId,
				(Xil_ExceptionHandler)XGpioPs_IntrHandler,
				(void *)Gpio);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/* Enable both edge interrupts for PENITQ pin in bank 2. */
	XGpioPs_SetIntrType(Gpio, EMIO_GPIO_BANK, 0xFFFFFFFF, 0xFFFFFFFF, 0xFFFFFFFF);

	/* Set the handler for gpio interrupts. */
	XGpioPs_SetCallbackHandler(Gpio, (void *)Gpio, GPIOIntrHandler);

	/* Disable All the GPIO interrupts of Bank 2. */
	XGpioPs_IntrDisable(Gpio, EMIO_GPIO_BANK, 0xFFFFFFFF);

	/* Enable the GPIO interrupts of Bank 2. */
	XGpioPs_IntrEnable(Gpio, EMIO_GPIO_BANK, EMIO_PIN_MASK_PENIRQ);

	/* Enable the interrupt for the GPIO device. */
	XScuGic_Enable(GicInstancePtr, GpioIntrId);

	/* Enable interrupts in the Processor. */
	Xil_ExceptionEnableMask(XIL_EXCEPTION_IRQ);

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* The purpose of this function is to illustrate how to use the GPIO driver to
* turn on/off an LED and read the inputs using the pin APIs.
*
* @param	DeviceId is the XPAR_<GPIO_instance>_DEVICE_ID value from
*		xparameters.h
* @param	DataRead is the pointer where the data read from GPIO Input is
*		returned.
*
* @return	- XST_SUCCESS if the example has completed successfully.
*		- XST_FAILURE if the example has failed.
*
* @note		This function will not return if the test is running.
*
******************************************************************************/
int GpioInit(void)
{
	int Status;
	XGpioPs_Config *ConfigPtr;

	/*
	 * Initialize the GPIO driver.
	 */
	ConfigPtr = XGpioPs_LookupConfig(GPIO_DEVICE_ID);

	Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);


	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	/*
	 * Set the direction for the specified pin to be input.
	 */
	XGpioPs_SetDirectionPin(&Gpio, GPIO_INPUT_PIN_CONV_BUSY, 0x0); // 0 for Input Direction, 1 for Output Direction.
	XGpioPs_SetDirectionPin(&Gpio, GPIO_INPUT_PIN_PENIRQ, 0x0); // 0 for Input Direction, 1 for Output Direction.


	/*
	 * Setup the interrupts such that interrupt processing can occur. If
	 * an error occurs then exit.
	 */
//	Status = SetupGPIOInterruptSystem(&IntcInstance, &Gpio, XPAR_PS7_GPIO_0_INTR);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}


	return Status;
}

/******************************************************************************/
/**
*
* This function performs a test on the GPIO driver/device with the GPIO
* configured as INPUT.
*
* @param	DataRead is the pointer where the data read from GPIO Input is
*		returned
*
* @return	- XST_SUCCESS if the example has completed successfully.
*		- XST_FAILURE if the example has failed.
*
* @note		None.
*
******************************************************************************/
static int GpioGetInput(u32 DeviceId, u32 *DataRead)
{
	/*
	 * Read the state of the data so that it can be  verified.
	 */
	*DataRead = XGpioPs_ReadPin(&Gpio, DeviceId);

	return XST_SUCCESS;
}

/*****************************************************************************
*
* The purpose of this function is to illustrate how to use the XSpiPs
* device driver in interrupt mode . This test writes and reads data from a
* ADS7846.
* This part must be present in the hardware to use this example.
*
* @param	IntcInstancePtr is a pointer to the GIC driver to use.
* @param	SpiInstancePtr is a pointer to the SPI driver to use.
* @param	SpiDeviceId is the DeviceId of the Spi device.
* @param	SpiIntrId is the Spi Interrupt Id.
*
* @return	XST_SUCCESS if successful else XST_FAILURE.
*
* @note
*
* This function calls functions which contain loops that may be infinite
* if interrupts are not working such that it may not return. If the device
* slave select is not correct and the device is not responding on bus it will
* read a status of 0xFF for the status register as the bus is pulled up.
*
*****************************************************************************/
int ADS7846Intr(XScuGic *IntcInstancePtr, XSpiPs *SpiInstancePtr,
			 u16 SpiDeviceId, u16 SpiIntrId)
{
	int Status;
	XSpiPs_Config *SpiConfig;
	u8 readbuffer[8];
	u16 adcvalue;
	u32 DataRead;

	/*
	 * Initialize the SPI driver so that it's ready to use
	 */
	SpiConfig = XSpiPs_LookupConfig(SpiDeviceId);
	if (NULL == SpiConfig) {
		return XST_FAILURE;
	}

	Status = XSpiPs_CfgInitialize(SpiInstancePtr, SpiConfig,
				       SpiConfig->BaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the Spi device to the interrupt subsystem such that
	 * interrupts can occur. This function is application specific
	 */
	Status = SpiSetupIntrSystem(IntcInstancePtr, SpiInstancePtr, SpiIntrId);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Setup the handler for the SPI that will be called from the
	 * interrupt context when an SPI status occurs, specify a pointer to
	 * the SPI driver instance as the callback reference so the handler is
	 * able to access the instance data
	 */
	XSpiPs_SetStatusHandler(SpiInstancePtr, SpiInstancePtr,
				 (XSpiPs_StatusHandler) SpiHandler);

	/*
	 * Set the Spi device as a master. External loopback is required.
	 */
	XSpiPs_SetOptions(SpiInstancePtr, XSPIPS_MASTER_OPTION |
			   XSPIPS_FORCE_SSELECT_OPTION
			   );

	XSpiPs_SetClkPrescaler(SpiInstancePtr, XSPIPS_CLK_PRESCALE_128);


	// Set Control byte
	ADS7846Read(SpiInstancePtr, CONTROL_X_BYTE, readbuffer);

	/*
	 * Assert the SPI ADS7846 chip select
	 */
	XSpiPs_SetSlaveSelect(SpiInstancePtr, 0); // CS0

	while(1)
	{
		{
			// X pos
			ADS7846Read(SpiInstancePtr, CONTROL_X_BYTE, readbuffer);

			delay(5);

			adcvalue = (readbuffer[1] << 4 ) | (readbuffer[2] >> 4);

			xil_printf("X : %4x ", adcvalue);

			// Y pos
			ADS7846Read(SpiInstancePtr, CONTROL_Y_BYTE, readbuffer);

			delay(5);

			adcvalue = (readbuffer[1] << 4 ) | (readbuffer[2] >> 4);

			xil_printf("Y : %4x ", adcvalue);

			// Z1 pos
			ADS7846Read(SpiInstancePtr, CONTROL_Z1_BYTE, readbuffer);

			delay(5);

			adcvalue = (readbuffer[1] << 4 ) | (readbuffer[2] >> 4);

			xil_printf("Z1 : %4x ", adcvalue);

			// Z2 pos
			ADS7846Read(SpiInstancePtr, CONTROL_Z2_BYTE, readbuffer);

			delay(5);

			adcvalue = (readbuffer[1] << 4 ) | (readbuffer[2] >> 4);

			xil_printf("Z2 : %4x  ", adcvalue);
		}

		/*
		 * Read GPIO Input Pin
		 */
//		GpioGetInput(GPIO_INPUT_PIN_CONV_BUSY, &DataRead);
//		xil_printf("INPUT_PIN_CONV_BUSY: %d \r\n", DataRead);

		GpioGetInput(GPIO_INPUT_PIN_PENIRQ, &DataRead);
		xil_printf("PENIRQ: %d \r\n", DataRead);
	};

	SpiDisableIntrSystem(IntcInstancePtr, SpiIntrId);
	return XST_SUCCESS;
}

/******************************************************************************
*
* This function reads from the ADS7846M connected to the SPI interface.
*
* @param	SpiPtr is a pointer to the SPI driver instance to use.
* @param	Address contains the address to read data from in the ADS7846.
* @param	ByteCount contains the number of bytes to read.
* @param	Buffer is a buffer to read the data into.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
void ADS7846Read(XSpiPs *SpiPtr, u8 ChannelSelect, u8 *readbuffer)
{
	u8 writebuffer[8];

	writebuffer[0] = ChannelSelect;

	writebuffer[1] = 0;
	writebuffer[2] = 0;
	writebuffer[3] = 0;
	writebuffer[4] = 0;
	writebuffer[5] = 0;
	writebuffer[6] = 0;
	writebuffer[7] = 0;

	// Clear SPI Transfer end flag
	TransferInProgress = TRUE;

	XSpiPs_Transfer(SpiPtr, writebuffer, readbuffer, NUMOFCONTROLBYTE+NUMOFADCBYTE);

	/*
	 * Wait for the transfer on the SPI bus to be complete before proceeding
	 */
	while (TransferInProgress);
}

/******************************************************************************
*
* This function is the handler which performs processing for the SPI driver.
* It is called from an interrupt context such that the amount of processing
* performed should be minimized.  It is called when a transfer of SPI data
* completes or an error occurs.
*
* This handler provides an example of how to handle SPI interrupts
* but is application specific.
*
*
* @param	CallBackRef is a reference passed to the handler.
* @param	StatusEvent is the status of the SPI .
* @param	ByteCount is the number of bytes transferred.
*
* @return	None
*
* @note		None.
*
******************************************************************************/
void SpiHandler(void *CallBackRef, u32 StatusEvent, unsigned int ByteCount)
{
	/*
	 * Indicate the transfer on the SPI bus is no longer in progress
	 * regardless of the status event
	 */
	TransferInProgress = FALSE;

	/*
	 * If the event was not transfer done, then track it as an error
	 */
	if (StatusEvent != XST_SPI_TRANSFER_DONE) {
		Error++;
	}
}


/*****************************************************************************/
/**
*
* This function setups the interrupt system for an Spi device.
* This function is application specific since the actual system may or may not
* have an interrupt controller. The Spi device could be directly connected to
* a processor without an interrupt controller.  The user should modify this
* function to fit the application.
*
* @param	IntcInstancePtr is a pointer to the instance of the Intc device.
* @param	SpiInstancePtr is a pointer to the instance of the Spi device.
* @param	SpiIntrId is the interrupt Id for an SPI device.
*
* @return	XST_SUCCESS if successful, otherwise XST_FAILURE.
*
* @note		None.
*
******************************************************************************/
static int SpiSetupIntrSystem(XScuGic *IntcInstancePtr,
			      XSpiPs *SpiInstancePtr, u16 SpiIntrId)
{
	int Status;

#ifndef TESTAPP_GEN
	XScuGic_Config *IntcConfig; /* Instance of the interrupt controller */

	Xil_ExceptionInit();

	/*
	 * Initialize the interrupt controller driver so that it is ready to
	 * use.
	 */
	IntcConfig = XScuGic_LookupConfig(INTC_DEVICE_ID);
	if (NULL == IntcConfig) {
		return XST_FAILURE;
	}

	Status = XScuGic_CfgInitialize(IntcInstancePtr, IntcConfig,
					IntcConfig->CpuBaseAddress);
	if (Status != XST_SUCCESS) {
		return XST_FAILURE;
	}

	/*
	 * Connect the interrupt controller interrupt handler to the hardware
	 * interrupt handling logic in the processor.
	 */
	Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
				(Xil_ExceptionHandler)XScuGic_InterruptHandler,
				IntcInstancePtr);
#endif

	/*
	 * Connect the device driver handler that will be called when an
	 * interrupt for the device occurs, the handler defined above performs
	 * the specific interrupt processing for the device.
	 */
	Status = XScuGic_Connect(IntcInstancePtr, SpiIntrId,
				(Xil_ExceptionHandler)XSpiPs_InterruptHandler,
				(void *)SpiInstancePtr);
	if (Status != XST_SUCCESS) {
		return Status;
	}

	/*
	 * Enable the interrupt for the Spi device.
	 */
	XScuGic_Enable(IntcInstancePtr, SpiIntrId);

#ifndef TESTAPP_GEN
	/*
	 * Enable interrupts in the Processor.
	 */
	Xil_ExceptionEnable();
#endif

	return XST_SUCCESS;
}

/*****************************************************************************/
/**
*
* This function disables the interrupts that occur for the Spi device.
*
* @param	IntcInstancePtr is the pointer to a ScuGic driver instance.
* @param	SpiIntrId is the interrupt Id for an SPI device.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void SpiDisableIntrSystem(XScuGic *IntcInstancePtr, u16 SpiIntrId)
{
	/*
	 * Disable the interrupt for the SPI device.
	 */
	XScuGic_Disable(IntcInstancePtr, SpiIntrId);

	/*
	 * Disconnect and disable the interrupt for the Spi device.
	 */
	XScuGic_Disconnect(IntcInstancePtr, SpiIntrId);
}

/****************************************************************************/
/**
* This function is the user layer callback function for the bank 0 interrupts of
* the GPIO device. It checks if all the switches have been pressed to stop the
* interrupt processing and exit from the example.
*
* @param	CallBackRef is a pointer to the upper layer callback reference.
* @param	Status is the Interrupt status of the GPIO bank.
*
* @return	None.
*
* @note		None.
*
******************************************************************************/
static void GPIOIntrHandler(void *CallBackRef, u32 Bank, u32 Status)
{
//	XGpioPs *Gpio = (XGpioPs *)CallBackRef;
	u32 DataRead;

	/* Do nothing if the intr is generated for a different bank. */
	if (Bank != EMIO_GPIO_BANK) {
		return;
	}

	if (Status != EMIO_PIN_MASK_PENIRQ) {
		return;
	}

	GpioGetInput(GPIO_INPUT_PIN_PENIRQ, &DataRead);

	if(DataRead == 1)
	{
		xil_printf("Pen is not pressed\r\n");
		// rising edge
		PenIsPressed = PENISNOTPRESSED;
	}else{
		xil_printf("Pen is pressed\r\n");
		// falling edge
		PenIsPressed = PENISPRESSED;
	}
}
