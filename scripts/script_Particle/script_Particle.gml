function CreateRadialParticle(_num, _sprite, _color, _speed_min, _speed_max, _fade_time, _do_alpha_decay = true, _do_speed_decay = true, _do_scale_decay = true)
{
	repeat(_num)
	{
		var _particle = instance_create_layer(x, y, layer, obj_Particle);
		_particle.sprite_index = _sprite;
		_particle.image_blend = _color;
		_particle.direction = random_range(0, 359);
		_particle.fade_time = _fade_time;
		_particle.base_speed = random_range(_speed_min, _speed_max);
		_particle.do_alpha_decay = _do_alpha_decay;
		_particle.do_speed_decay = _do_speed_decay;
		_particle.do_scale_decay = _do_scale_decay;
	}
}