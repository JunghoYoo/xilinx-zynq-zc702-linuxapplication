#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h> 

// GPIO #54 - timepulse pin on MAX-6Q GPS
void set_gpio_input(void)
{
    int exportfd, directionfd;
	
    printf("GPIO-Input-Setting\n");
 
    // The GPIO has to be exported to be able to see it
    // in sysfs
 
    exportfd = open("/sys/class/gpio/export", O_WRONLY);
    if (exportfd < 0)
    {
        printf("Cannot open GPIO to export it\n");
        exit(1);
    }
 
    write(exportfd, "54", 3);
    close(exportfd);
 
    printf("GPIO exported successfully\n");
 
    // Update the direction of the GPIO to be an output
 
    directionfd = open("/sys/class/gpio/gpio54/direction", O_RDWR);
    if (directionfd < 0)
    {
        printf("Cannot open GPIO direction it\n");
        exit(1);
    }
 
    write(directionfd, "in", 3);
    close(directionfd);
 
    printf("GPIO direction set as input successfully\n");
}

// GPIO #55 - EXTINT pin on MAX-6Q GPS
void set_gpio_output(void)
{
    int valuefd, exportfd, directionfd;
	
    printf("GPIO-Output-Setting\n");
 
    // The GPIO has to be exported to be able to see it
    // in sysfs
 
    exportfd = open("/sys/class/gpio/export", O_WRONLY);
    if (exportfd < 0)
    {
        printf("Cannot open GPIO to export it\n");
        exit(1);
    }
 
    write(exportfd, "55", 3);
    close(exportfd);
 
    printf("GPIO exported successfully\n");
 
    // Update the direction of the GPIO to be an output
 
    directionfd = open("/sys/class/gpio/gpio55/direction", O_RDWR);
    if (directionfd < 0)
    {
        printf("Cannot open GPIO direction it\n");
        exit(1);
    }
 
    write(directionfd, "out", 4);
    close(directionfd);
 
    printf("GPIO direction set as output successfully\n");

    // Set high for unused interrupt

    valuefd = open("/sys/class/gpio/gpio55/value", O_RDWR);
    if (valuefd < 0)
    {
        printf("Cannot open GPIO value\n");
        exit(1);
    }
 
    write(valuefd, "1", 2);
    close(valuefd);
}

int main(void)
{
    int ttyfd;
    char buffer[1000]; 
	int strcnt;
    
    printf("UART-GPS test running...\n");
 
    // timepulse 
    set_gpio_input();
    
    // extint 
    set_gpio_output();

    ttyfd = open("/dev/ttyPS1", O_RDWR | O_NOCTTY | O_NDELAY | O_NONBLOCK);
    
    if (ttyfd < 0)
    {
        printf("Cannot open UART-GPS to open it\n");
        exit(1);
    }
 
    while(1) {
        strcnt = read( ttyfd, buffer, 100 );
        
        buffer[strcnt] = 0;

        if(strcnt > 0)
            printf("%s", buffer);
        
        usleep(1000);
    }
    
    close(ttyfd);

    return 0;
} 
