var _player_confirm = player_id == 1 ? global.game_player1_confirm : global.game_player2_confirm;
if (_player_confirm) 
{
	draw_text(x, y, "ready!");	
}
else
{
	draw_self();
}