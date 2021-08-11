if (global.game_start) 
{
	move_wrap(true, false, sprite_width/3);

	if (input_action) 
	{
		CreatePlayerBullet(bullet_type, player_color);
	}
}