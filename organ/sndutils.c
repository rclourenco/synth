#include <unistd.h>
#include <sys/soundcard.h>
#include <fcntl.h>
#include <stdlib.h>

void snd_set_sample_rate(int fd,int sample_rate)
{  
  if (ioctl (fd, SNDCTL_DSP_SPEED, &sample_rate) == -1)
  {
      perror ("SNDCTL_DSP_SPEED");
      exit (-1);
  }
}


void snd_set_buffer(int fd,int num, int size) {
	int tmp = (num<<16) | size;
  if (ioctl (fd, SNDCTL_DSP_SETFRAGMENT, &tmp) == -1)
    {
      perror ("SNDCTL_DSP_SETFRAGMENT");
    }
}

int snd_open_device(char *device, int mode){
  int fd;

  if ((fd = open (device, mode, 0)) == -1)
    {
      perror (device);
      exit (-1);
    }

	return fd;
}

int snd_close_device(int fd){
	close(fd);
}

void snd_write_sample(int fd,char *s, int size) {
	if (write (fd, s, size) == -1)
    {
      perror ("Audio write");
      exit (-1);
    }
}
