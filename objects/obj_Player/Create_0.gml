if (player_id == 1) 
{
	key_action = global.key_player1;
	player_color = global.color_player1;
	direction = 0;
}
else if (player_id == 2) 
{
	key_action = global.key_player2;
	player_color = global.color_player2;
	direction = 180;
}

bullet_type = 0;
life = 1;
player_speed = 4;
image_blend = player_color;

trail_scale_min = 0.2;
trail_scale_max = 1;
trail_speed = 7;
trail_fade = 0.2;
trail_rate_min = 2;
trail_rate_max = 8;
alarm[0] = irandom_range(trail_rate_min, trail_rate_max);