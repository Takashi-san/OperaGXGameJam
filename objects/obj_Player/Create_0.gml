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