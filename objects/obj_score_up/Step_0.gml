fade_step_counter++;
var ratio = fade_step_counter / fade_step;
ratio = ratio * ratio;

y = start_y + 10 * ratio;

scale = 1 + 1 * ratio;

if (ratio >= 1) 
{
	instance_destroy();
}
