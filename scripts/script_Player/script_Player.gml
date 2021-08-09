function CreatePlayerBullet(_bullet_type, _bullet_color)
{
	var _new_bullet = instance_create_layer(x, y - sprite_height/2, layer, obj_PlayerBullet);
	_new_bullet.bullet_type = _bullet_type;
	_new_bullet.bullet_color = _bullet_color;
	_new_bullet.image_blend = _bullet_color;
	
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
	
	// Muzzle flash.
	var _particle = instance_create_layer(x, y - sprite_height/2, "foreground_effect", obj_Particle);
	_particle.sprite_index = spr_Flash_medium;
	_particle.fade_time = 0.05;
	_particle.base_speed = 0;
	_particle.do_alpha_decay = true;
	_particle.do_speed_decay = false;
	_particle.do_scale_decay = true;
}