if (player_id == 1) 
{
	if (keyboard_check_pressed(global.key_player1)) 
	{
		global.game_player1_confirm = true;
	}
}
else
{
	if (keyboard_check_pressed(global.key_player2)) 
	{
		global.game_player2_confirm = true;
	}
}