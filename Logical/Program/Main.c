
#include <bur/plctypes.h>

#ifdef _DEFAULT_INCLUDES
	#include <AsDefault.h>
#endif

void _INIT ProgramInit(void)
{
	fb_motor1.dt = 0.03;
	fb_motor1.ke = 0.30;
	fb_motor1.Tm = 0.1;

	
	fb_motor2.dt = 0.03;
	fb_motor2.ke = 0.30;
	fb_motor2.Tm = 0.1; 

	


	fb_controller.dt = 0.01;
	fb_controller.k_i = 4.8;
	fb_controller.k_p = 0.48;
	fb_controller.max_abs_value = 24.0;
	

	
	
	speed = 0;
	counter = 0;
	enable = 1;
}
