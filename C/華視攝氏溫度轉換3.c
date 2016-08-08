#include <stdio.h>
#include <stdlib.h>

#define lower 0
#define upper 300
#define step 20

main()
{
  int fathr;
 
  
  
  
 for(fathr=lower; fathr <= upper; fathr = fathr+step)
 {
 	printf("%3d %6.1f \n",fathr,(5.0/9.0)*(fathr -32));
 }
 
 
  return 0;
}
