if (keyboard_check_pressed(global.key_player1)) 
{
	if (global.game_multiplayer_mode) 
	{
		room_goto(room_game_multi);
	}
	else
	{
		room_goto(room_game_single);
	}
}
else if (keyboard_check_pressed(global.key_player2)) 
{
	global.game_multiplayer_mode = !global.game_multiplayer_mode;
}