#include <stdio.h>
#include <stdlib.h>

main()
{
  float fathr , celsius;
  int lower,upper ,step;
  
  lower = 0;
  upper = 300;
  step = 20;
  fathr  = lower ;
  
  while(fathr <=upper)
  	{
  		celsius = 5*(fathr-32)/9;
  		printf("%3.0f  \t  %6.1f  \n",fathr,celsius);//%3.0f 使用3格且不印小數點 %6.1f 使用6格印一位小數   
  		fathr = fathr+step;
	}
 
  return 0;
}
