var _player_confirm = player_id == 1 ? global.game_player1_confirm : global.game_player2_confirm;
if (_player_confirm) 
{
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text(x, y, "READY!");	
}
else
{
	draw_self();
}