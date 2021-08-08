function CreatePlayerBullet(_bullet_type)
{
	var _new_bullet = instance_create_layer(x, y - sprite_height/2, layer, obj_PlayerBullet);
	_new_bullet.bullet_type = _bullet_type;
	
	switch(_bullet_type)
	{
		case 0: // Default bullet
			_new_bullet.sprite_index = spr_PlayerBullet_tmp;
			_new_bullet.speed = 15;
			_new_bullet.bullet_damage = 1;
			audio_play_sound(sfx_bullet3, 1, false);
		break;
	
		default:
			show_debug_message("Invalid player bullet type!!!");
	}
	
	var _particle = instance_create_layer(x, y - sprite_height/2, layer, obj_Particle);
	_particle.sprite_index = spr_Flash_medium;
	_particle.image_blend = global.color_bullet;
	_particle.fade_time = 0.05;
	_particle.base_speed = 0;
	_particle.do_alpha_decay = false;
	_particle.do_speed_decay = false;
	_particle.do_scale_decay = false;
}