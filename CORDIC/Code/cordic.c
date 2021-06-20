//June 18th : 
// To do: Add special condition when adjusted angle = 0

#include <stdio.h>
#include <stdlib.h>

void cordic(unsigned short int angle);

int main(void)
{
  printf("Trial 1: input angle = 90 degrees\n");
  cordic(0x4000); 
  
  printf("Trial 2: input angle is about 270 degrees\n");
  cordic(0xBFFF); 
  
  printf("Trial 3: input angle = 110 degrees\n");
  cordic(20025); 
   
  printf("Trial 4: input angle = 80 degrees\n");
  cordic(14564); 
  
  return 0;
}

void cordic(unsigned short int angle)
{
  const int inc_angle[16] = {0x40000000, 0x25C80A3B, 0x13F670B7, 0xA2223A8, 0x5161A86, 0x28BAFC3, 0x145EC3D, 
                             0xA2F8AA, 0x517CA7, 0x28BE5D, 0x145F30, 0xA2F98, 0x517CC, 0x28BE6, 0x145F3, 0xA2FA};
  const int k = 0x4DBA;
  
  short int q = angle >> 14;
  printf("Quadrant of the input angle is %d.\n", q+1);
  
  signed int xi = 1 << 30; signed int xi2 = xi;
  signed int yi = 0; signed int yi2 = 0;
  unsigned short int ang_90 = angle << 2;
  signed int zi = ang_90 << 15;
  signed int zi2 = 0;
  printf("Adjusted angle: %X.\n\n", zi);
  
  int i = 0;
  for (i = 0; i < 16; i++)
  {
    if (zi < 0)
    {
      zi2 = zi + inc_angle[i];
      xi2 = xi + (yi >> i);
      yi2 = yi - (xi >> i); 
    }
    else
    {
      zi2 = zi - inc_angle[i];
      xi2 = xi - (yi >> i);
      yi2 = yi + (xi >> i);
    }
    zi = zi2;
    printf("zi at loop %d: %X.\n", i, zi);
    xi = xi2;
    printf("xi at loop %d: %X.\n", i, xi);
    yi = yi2;
    printf("yi at loop %d: %X.\n", i, yi);
  } 
 
  unsigned int x_temp = ((abs(xi) >> 14)*k) >> 16;
  printf("x_temp: %X.\n", x_temp);
  unsigned int y_temp = ((abs(yi) >> 14)*k) >> 16;
  printf("y_temp: %X.\n", y_temp);
  
  signed int cos, sin;
   
  switch (q)
  {
	case 0: {// First quadrant
		cos = x_temp;
		sin = y_temp;
		break;
		}
	case 1:{// Second quadrant
		cos = -y_temp;
		sin = x_temp;
		break;
		}
	case 2:{// Third quadrant
		cos = -x_temp;
		sin = -y_temp;
		break;
		}
	case 3:{// Fourth quadrant
		cos = y_temp;
		sin = -x_temp;
		break;
		}
	default:
		printf("Something doesn't seem right...\n");
		break;
  }
  
  printf("Cosine: %X.\n", cos);
  printf("Sine: %X.\n\n", sin);
  
  //return 0;
}