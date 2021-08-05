function CreatePlayerBullet(_bullet_type)
{
	var _new_bullet = instance_create_layer(x, y, layer, obj_PlayerBullet);
	_new_bullet.bullet_type = _bullet_type;
	
	switch(_bullet_type)
	{
		case 0: // Default bullet
			_new_bullet.sprite_index = spr_PlayerBullet_tmp;
			_new_bullet.speed = 15;
			_new_bullet.bullet_damage = 1;
		break;
	
		default:
			show_debug_message("Invalid player bullet type!!!");
	}
}