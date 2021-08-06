timer += delta_time / 1000000;
var _ratio = timer / fade_time;
image_alpha = 1 - _ratio;
image_angle += rotation_speed;
if (image_alpha == 0) 
{
	instance_destroy();
}