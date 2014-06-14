#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h> 
 
// The specific GPIO being used must be setup and replaced thru
// this code.  The GPIO of 240 is in the path of most the sys dirs
// and in the export write.
//
// Figuring out the exact GPIO was not totally obvious when there
// were multiple GPIOs in the system. One way to do is to go into
// the gpiochips in /sys/class/gpio and view the label as it should
// reflect the address of the GPIO in the system. The name of the
// the chip appears to be the 1st GPIO of the controller.
//
// The export causes the gpio240 dir to appear in /sys/class/gpio.
// Then the direction and value can be changed by writing to them.
 
// The performance of this is pretty good, using a nfs mount,
// running on open source linux, on the ML507 reference system,
// the GPIO can be toggled about every 4 usec.
 
// The following commands from the console setup the GPIO to be
// exported, set the direction of it to an output and write a 1
// to the GPIO.
//
// bash> echo 240 > /sys/class/gpio/export
// bash> echo out > /sys/class/gpio/gpio240/direction
// bash> echo 1 > /sys/class/gpio/gpio240/value
 
// if sysfs is not mounted on your system, the you need to mount it
// bash> mount -t sysfs sysfs /sys
 
// the following bash script to toggle the gpio is also handy for
// testing
//
// while [ 1 ]; do
//  echo 1 > /sys/class/gpio/gpio240/value
//  echo 0 > /sys/class/gpio/gpio240/value
// done
 
// to compile this, use the following command
// gcc gpio.c -o gpio
 
// The kernel needs the following configuration to make this work.
//
// CONFIG_GPIO_SYSFS=y
// CONFIG_SYSFS=y
// CONFIG_EXPERIMENTAL=y
// CONFIG_GPIO_XILINX=y
 
int main()
{
    int valuefd, exportfd, directionfd, edgefd, unexportfd;
    char buf[10]; 
	
    printf("GPIO 12(Push button SW14) test running...\n");
 
    // The GPIO has to be exported to be able to see it
    // in sysfs
 
    exportfd = open("/sys/class/gpio/export", O_WRONLY);
    if (exportfd < 0)
    {
        printf("Cannot open GPIO to export it\n");
        exit(1);
    }
 
    write(exportfd, "12", 3);
    close(exportfd);
 
    printf("GPIO exported successfully\n");

    // Update the direction of the GPIO to be an input
 
    directionfd = open("/sys/class/gpio/gpio12/direction", O_RDWR);
    if (directionfd < 0)
    {
        printf("Cannot open GPIO direction it\n");
        exit(1);
    }
 
    write(directionfd, "in", 3);
    close(directionfd);
 
    printf("GPIO direction set as input successfully\n");
 
    // Update the edge of the GPIO to be an rising
    
    edgefd = open("/sys/class/gpio/gpio12/edge", O_RDWR);
    if (edgefd < 0)
    {
        printf("Cannot open GPIO edge it\n");
        exit(1);
    }
 
    write(edgefd, "rising", 7); 
    close(edgefd);

    printf("GPIO IRQ edge set as rising successfully\n");

    // Get the GPIO value ready to be read
 
    valuefd = open("/sys/class/gpio/gpio12/value", O_RDONLY);
    if (valuefd < 0)
    {
        printf("Cannot open GPIO value\n");
        exit(1);
    }
    
    // After the GPIO interrupt is requested this application stops.
    printf("Wait for GPIO rising edge interrupt, \nPush button SW14 now\n");

    // Wait until GPIO interrupt
    read(valuefd, buf, 2);

    // After GPIO interrupt is requested,
    printf("%c - GPIO value\n", buf[0]);
 
    // The GPIO has to be unexported not to be able to see it
    // in sysfs
 
    unexportfd = open("/sys/class/gpio/unexport", O_WRONLY);
    if (unexportfd < 0)
    {
        printf("Cannot open GPIO to unexport it\n");
        exit(1);
    }
 
    write(unexportfd, "12", 3);
    close(unexportfd);
  
    printf("GPIO unexported successfully\n");
  
	close(directionfd);
	close(valuefd);
}

