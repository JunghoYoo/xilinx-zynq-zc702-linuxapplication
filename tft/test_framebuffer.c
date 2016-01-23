    #include <unistd.h>
    #include <stdio.h>
    #include <fcntl.h>
    #include <linux/fb.h>
    #include <sys/mman.h>

    int main(int argc, char* argv [])
    {
        int fbfd = 0;
        struct fb_var_screeninfo vinfo;
        struct fb_fix_screeninfo finfo;
        long int screensize = 0;
        char *fbp = 0;
        unsigned int x = 0, y = 0;
        long int location = 0;
        int framebufferindex;

        if(argc == 1) {
            printf("Open framebuffer 0[default].\n");
            framebufferindex = 0;
        } else {
    
            framebufferindex = *argv[1] - '0';
            if(framebufferindex < 0)
            {
                printf("Framebuffer Index cannot be negative.\n");
                printf("Open framebuffer 0[default].\n");
                framebufferindex = 0;
            }else{
                printf("Open framebuffer %d.\n",framebufferindex);
            }
        }

        // Open the file for reading and writing
        switch (framebufferindex)
        {
            case 0:
                fbfd = open("/dev/fb0", O_RDWR);
            break;
            case 1:
                fbfd = open("/dev/fb1", O_RDWR);
            break;
            case 2:
                fbfd = open("/dev/fb2", O_RDWR);
            break;
            case 3:
                fbfd = open("/dev/fb3", O_RDWR);
            break;
            default: 
                fbfd = open("/dev/fb0", O_RDWR);
            break;
        }

        if (!fbfd) {
            printf("Error: cannot open framebuffer device.\n");
            exit(1);
        }
        printf("The framebuffer device was opened successfully.\n");

        // Get fixed screen information
        if (ioctl(fbfd, FBIOGET_FSCREENINFO, &finfo)) {
            printf("Error reading fixed information.\n");
            exit(2);
        }

        // Get variable screen information
        if (ioctl(fbfd, FBIOGET_VSCREENINFO, &vinfo)) {
            printf("Error reading variable information.\n");
            exit(3);
        }

        printf("Actual  : %dx%d, %dbpp\n", vinfo.xres, vinfo.yres, vinfo.bits_per_pixel);

        printf("Virtual : %dx%d\n", vinfo.xres_virtual, vinfo.yres_virtual);

        printf("xoffset : %d, yoffset : %d\n",vinfo.xoffset,vinfo.yoffset);

        // Figure out the size of the screen in bytes
        screensize = vinfo.xres_virtual * vinfo.yres_virtual * vinfo.bits_per_pixel / 8;

        // Map the device to memory
        fbp = (char *)mmap(0, screensize, PROT_READ | PROT_WRITE, MAP_SHARED,
                           fbfd, 0);
        if ((int)fbp == -1) {
            printf("Error: failed to map framebuffer device to memory.\n");
            exit(4);
        }

        printf("The framebuffer device was mapped to memory successfully.\n");

        x = 0; y = 0;       // Where we are going to put the pixel

       // y = 400;
        // Figure out where in memory to put the pixel
        for (y = 0; y < vinfo.yres; y++)
        {
            location = (vinfo.xoffset) * (vinfo.bits_per_pixel/8) +
                       (y+vinfo.yoffset) * finfo.line_length;
            
            for (x = 0; x < vinfo.xres; x++)
            {
                location = (x+vinfo.xoffset) * (vinfo.bits_per_pixel/8) +
                           (y+vinfo.yoffset) * finfo.line_length;
 
                if (vinfo.bits_per_pixel == 32) {

                      if(x<256){
                        *(fbp + location)     = 0;      //  blue
                        *(fbp + location + 1) = 0;      //  green
                        *(fbp + location + 2) = x;              //  red
                    }else if(x<512){
                        *(fbp + location)     = 0;      //  blue
                        *(fbp + location + 1) = x & 0xff;      //  green
                        *(fbp + location + 2) = 0;      //  red
                    }else if(x<768){
                        *(fbp + location)     = x & 0xff;      //  blue
                        *(fbp + location + 1) = 0;      //  green
                        *(fbp + location + 2) = 0;      //  red
                    }else {
                        *(fbp + location)     = y & 0xff;      //  blue
                        *(fbp + location + 1) = y & 0xff;      //  green
                        *(fbp + location + 2) = y & 0xff;      //  red
                    }
                } else  { //assume 16bpp
                    int b = 10;
                    int g = (x-100)/6;     // A little green
                    int r = 31-(y-100)/16;    // A lot of red
                    unsigned short int t = r<<11 | g << 5 | b;
                    *((unsigned short int*)(fbp + location)) = t;
                }
            }
        }
        munmap(fbp, screensize);
        close(fbfd);
        return 0;
    }
    
