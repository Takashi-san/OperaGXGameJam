var _x = x + random_range(-sprite_width/3, sprite_width/3);
var _particle = instance_create_layer(_x, y, layer, obj_Particle);
_particle.sprite_index = spr_Particle_dust;
_particle.image_blend = image_blend;
_particle.fade_time = 0.2;
_particle.base_speed = 0;
_particle.do_alpha_decay = true;
_particle.do_speed_decay = false;
_particle.do_scale_decay = false;

var _random_scale = random_range(trail_scale_min, trail_scale_max);
_particle.image_xscale = _random_scale;
_particle.image_yscale = _random_scale;

alarm[0] = irandom_range(trail_rate_min, trail_rate_max);