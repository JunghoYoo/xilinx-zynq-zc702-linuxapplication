TOPDIR  = /work/gpio
TARGET  = arm-xilinx-linux-gnueabi
TOOLDIR = /work/CodeSourcery/Sourcery_CodeBench_Lite_for_Xilinx_GNU_Linux
LIBCDIR = $(TOOLDIR)/$(TARGET)
LIBGCCDIR = $(TOOLDIR)/lib/gcc/$(TARGET)/4.6.1
OUTDIR  = obj
APPDIR  = sources

AS      = $(TOOLDIR)/bin/$(TARGET)-as
CC      = $(TOOLDIR)/bin/$(TARGET)-gcc
LD      = $(TOOLDIR)/bin/$(TARGET)-ld
OBJCOPY = $(TOOLDIR)/bin/$(TARGET)-objcopy
OBJDUMP = $(TOOLDIR)/bin/$(TARGET)-objdump
SIZE    = $(TOOLDIR)/bin/$(TARGET)-size
APPCSRC = $(APPDIR)/uartgps.c
BIN	= uartgps

OBJS    = $(APPCSRC:.c=.o) $(APPASMSRC:.S=.o)
INCLUDE = -nostdinc -I. -I$(LIBGCCDIR)/include -I$(LIBCDIR)/include -I$(TOOLDIR)/$(TARGET)/libc/usr/include

CFLAGS  = $(INCLUDE) -gdwarf-2 -W -Wall -Wstrict-prototypes -Wno-trigraphs -O0
CFLAGS  +=  -fno-strict-aliasing -fno-common -pipe
CFLAGS  +=  -mcpu=cortex-a9 -fno-builtin
CFLAGS  +=  -mfloat-abi=softfp -mfpu=neon -ftree-vectorize
CFLAGS  +=  -ftree-vectorizer-verbose=6

all:
	$(CC) $(CFLAGS) $(APPCSRC) -o $(BIN)

	@echo	--------------------------------------------------------------------------------
	$(SIZE) $(BIN)
	@echo	--------------------------------------------------------------------------------
	cp $(BIN) /work/nfsroot/home/root/	
	@echo	Finished ... 
  
clean:
	rm -f $(APPDIR)/*.o
	rm -f $(OUTDIR)/$(BIN)*
  
dep:
	$(CC) -M $(INCLUDE) $(SRCS) > .depend
  
ifeq (.depend,$(wildcard .depend))
include .depend
endif

