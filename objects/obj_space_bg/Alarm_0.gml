repeat(star_quantity)
{
	var _x = irandom_range(0, room_width);
	var _y = irandom_range(0, room_height);
	var _particle = instance_create_layer(_x, _y, layer, obj_Particle);
	_particle.sprite_index = spr_space_star;
	_particle.fade_time = random_range(star_fade_min, star_fade_max);
	_particle.base_speed = 0;
	_particle.do_alpha_decay = true;
	_particle.do_speed_decay = false;
	_particle.do_scale_decay = false;
	_particle.rotation_speed = 0;

	var _random_scale = random_range(star_scale_min, star_scale_max);
	_particle.image_xscale = _random_scale;
	_particle.image_yscale = _random_scale;
}

alarm[0] = irandom_range(star_rate_min, star_rate_max);