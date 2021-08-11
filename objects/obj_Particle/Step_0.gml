timer += delta_time / 1000000;
var _ratio = timer / fade_time;
_ratio = _ratio * _ratio;
_ratio = 1 - _ratio;

if (do_alpha_decay)
{
	image_alpha = _ratio;
}

if (do_scale_decay) 
{
	image_xscale = initial_scale * _ratio;
	image_yscale = initial_scale * _ratio;
}

if (do_speed_decay) 
{
	speed = base_speed * _ratio;
}

image_angle += rotation_speed;

if (_ratio <= 0) 
{
	instance_destroy();
}