var _x = x + random_range(-sprite_width/10, sprite_width/10);
var _particle = instance_create_layer(_x, y, "background_instances", obj_Particle);
_particle.sprite_index = spr_space_star;
_particle.fade_time = trail_fade;
_particle.do_alpha_decay = true;
_particle.do_speed_decay = false;
_particle.do_scale_decay = false;
_particle.rotation_speed = 0;
_particle.direction = 270;
_particle.speed = trail_speed;

var _random_scale = random_range(trail_scale_min, trail_scale_max);
_particle.image_xscale = _random_scale;
_particle.image_yscale = _random_scale;
//_particle.initial_scale = _random_scale;

alarm[1] = irandom_range(trail_rate_min, trail_rate_max);