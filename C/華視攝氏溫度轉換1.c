#include <stdio.h>
#include <stdlib.h>

main()
{
  int fathr , celsius;
  int lower,upper ,step;
  lower = 0;
  upper = 300;
  step = 20;
  fathr  = lower ;
  while(fathr <=upper)
  	{
  		celsius = 5*(fathr-32)/9;
  		printf("%3d\t%d\n",fathr,celsius);//%3d 占用3格的整數 
  		fathr = fathr+step;
	}
 
  return 0;
}
