`timescale 1 ps / 1 ps

// 24bit true color
`define RGB_WHITE 		24'hFF_FF_FF
`define RGB_BLACK 		24'h00_00_00

`define RGB_RED		24'hFF_00_00
`define RGB_GREEN 		24'h00_FF_00
`define RGB_BLUE 		24'h00_00_FF

`define RGB_CYAN		24'h00_FF_FF
`define RGB_MAGENTA	24'hFF_00_FF
`define RGB_YELLOW		24'hFF_FF_00


module TFTLCDTest
    (
	input CLK,
	input Reset,

	output reg DENA,
	output reg HD,
	output reg VD,
	output SC,

	output [7:0] Red,
	output [7:0] Green,
	output [7:0] Blue

	);

//ref : http://www.qnx.com/developers/docs/660/index.jsp?topic=%2Fcom.qnx.doc.screen.wfdcfg%2Ftopic%2Fmanual%2Fcwfdcfg_timing.html
// total 992 * 500 = 496000 CLKS
// 29760KHz@60Hz

/*
pixel_clock_kHz
	The frequency (in kHz) that pixels are transmitted at. 
	The clock remains active throughout the entire horizontal and vertical blanking intervals, even when pixels are not being transmitted.
hpixels
	The width (in pixels) of the display. 
	Together with vlines, hpixels indicates the resolution of the display.
vlines
	The height (in lines) of the display. 
	Together with hpixels, vlines indicates the resolution of the display.
hsw
	The width of the horizontal synchronization pulse. 
	This width refers to the amount of time that the horizontal sync pulse is active. 
	The horizontal sync pulse is transmitted at the beginning of each video scanline. 
	Its purpose is to keep start of the horizontal video scanline in the display in sync with the video source that created it. 
	That is, when the scanline reaches the right side of your display, the horizontal sync pulses indicates that it is time to return and start the next scanline at the left side of the display again. 
	The width of this horizontal synchronization pulse is measured in pixels.
vsw
	The vertical synchronization pulse width. 
	This width refers to the amount of time that the vertical sync pulse is active. 
	The vertical sync pulse is transmitted at the beginning of each field and frame. 
	Its purpose is to ensure that the display scan starts at the top of the picture at the right time. 
	That is, when the last scanline on the bottom of the display has been reached, the display must return and start the next scanline back at the top of the screen for the next vertical cycle. 
	The width of this vertical synchronization pulse is measured in lines.
hfp
	The horizontal front porch is the amount of time between the end of the horizontal active time and the start of the horizontal synchronization pulse. 
	This time allows for the image to settle and to prevent the image from interfering with sync extraction. The horizontal front porch is measured in pixels.
vfp
	The vertical front porch is the amount of time between the end of the vertical active time and the start of the vertical synchronization pulse. 
	The vertical front porch is measured in lines.
hbp
	The horizontal back porch is the amount of time between the end of the horizontal sync pulse and the start of the next horizontal active time. 
	The horizontal back porch is measured in pixels.
vbp
	The vertical back porch is the amount of time between the end of the vertical sync pulse and the start of the next vertical active time. 
	The vertical back porch is measured in lines.

*/
parameter HPIXELS 	= 800;
parameter HFP 		= 20;
parameter HSW 		= 140;
parameter HBP 		= 140;

parameter VLINES	= 480;
parameter VFP 		= 3;
parameter VSW	 	= 10;
parameter VBP	 	= 7;

parameter ONEHORIZONTAL	= HBP + HPIXELS + HFP;

parameter MAXHCOUNT 	= HBP + HPIXELS + HFP + HSW - 1;
parameter MAXVCOUNT 	= VBP + VLINES + VFP + VSW - 1;

parameter VACTIVESTART 	= VSW + VBP;
parameter VACTIVEEND	= VSW + VBP + VLINES - 1;

parameter HACTIVESTART 	= HSW + HBP;
parameter HACTIVEEND	= HSW + HBP + HPIXELS - 1;

parameter VCOUNTMIN = VSW + VBP;
parameter VCOUNTMAX = VSW + VBP + VLINES - 1;

parameter COLORCHANGEFRAMECOUNT = 100;

reg [10:0] iHCount;
reg [10:0] iVCount;

reg [2:0] iColorCode;

reg [23:0] iRGB;

reg [23:0] iClockCount;

// Clock Counter
always @(negedge CLK)
begin
	if(Reset == 1'd1)
	begin
        iClockCount <= 24'd0;
    end else begin 
		iClockCount <= iClockCount + 24'd1;
	end
end

// Horizontal & Vertical Counter
always @(negedge CLK)
begin
	if(Reset == 1'd1)
	begin
		iHCount <= 11'd0;
		iVCount <= 11'd0;
	end else begin 
		if(iHCount < MAXHCOUNT)
			iHCount <= iHCount + 11'd1;
		else begin
			iHCount <= 11'd0;

			if(iVCount < MAXVCOUNT)
				iVCount <= iVCount + 11'd1;
			else
				iVCount <= 11'd0;
		end
	end
end

// Horizontal Sync
always @(negedge CLK)
begin
	if(Reset == 1'd1)
	begin
		HD <= 1'd0;
	end else begin 
		if(iHCount < HSW)
			HD <= 1'd0;
		else begin
			HD <= 1'd1; // ONEHORIZONTAL
		end
	end
end

// Vertical Sync
always @(negedge CLK)
begin
	if(Reset == 1'd1)
	begin
		VD <= 1'd0;
	end else begin 
		if(iVCount < VSW)
			VD <= 1'd0;
		else begin
			VD <= 1'd1; // ONEVertical
		end
	end
end

// DENA
always @(negedge CLK)
begin
	if(Reset == 1'd1)
	begin
		DENA <= 1'd0;
	end else begin 
		if(	((iVCount >= VACTIVESTART) && (iVCount <= VACTIVEEND)) &&
			((iHCount >= HACTIVESTART) && (iHCount <= HACTIVEEND)))
			DENA <= 1'd1; // Active
		else begin
			DENA <= 1'd0;
		end
	end
end

// Color Counter
always @(negedge CLK)
begin
	if(Reset == 1'd1)
	begin
        iColorCode <= 3'd0;
    end else begin 
		if(iClockCount == 24'd0)
		  iColorCode <= iColorCode + 3'd1;
		else
		  iColorCode <= iColorCode;
	end
end

always @(negedge CLK)
begin
    if((iVCount == 11'd0) && (iHCount == 11'd0))
        case(iColorCode)
            3'd0:
                    iRGB = `RGB_WHITE;
            3'd1:
                    iRGB = `RGB_RED;
            3'd2:
                    iRGB = `RGB_GREEN;
            3'd3:
                    iRGB = `RGB_BLUE;
            3'd4:
                    iRGB = `RGB_BLACK;
            3'd5:
                    iRGB = `RGB_CYAN;
            3'd6:
                    iRGB = `RGB_MAGENTA;
            3'd7:
                    iRGB = `RGB_YELLOW;
    
            default:
                    iRGB = `RGB_BLACK;
        endcase
    else
        iRGB = iRGB;
end

assign Red      = iRGB[23:16];
assign Green    = iRGB[15:8];
assign Blue     = iRGB[7:0];

assign SC       = 1'd0; // normal for 0, reverse for 1

endmodule
