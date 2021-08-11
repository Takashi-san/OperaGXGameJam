var _player_confirm = player_id == 1 ? global.game_player1_confirm : global.game_player2_confirm;
if (_player_confirm) 
{
	image_alpha = 0;	
}
else
{
	image_alpha = 1;
}

if (global.game_start) 
{
	instance_destroy();
}