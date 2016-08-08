#include <stdio.h>
#include <stdlib.h>

#define lower 0
#define upper 300
#define step 20

main()
{
  float  celsius;
  int fathr;
  
  
  fathr  = lower ;
  
  while(fathr <=upper)
  	{
  		celsius = 5*(fathr-32)/9;
  		printf("%3d  \t  %6.1f  \n",fathr,celsius);
  		fathr = fathr+step;
	}
 
  return 0;
}
