timer += delta_time / 1000000;
var _ratio = timer / fade_time;
_ratio = _ratio * _ratio;
_ratio = 1 - _ratio;

//image_alpha = _ratio;
image_xscale = _ratio;
image_yscale = _ratio;

speed = base_speed * _ratio;

image_angle += rotation_speed;

if (_ratio <= 0) 
{
	instance_destroy();
}