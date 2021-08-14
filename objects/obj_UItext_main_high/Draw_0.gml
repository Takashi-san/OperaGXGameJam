draw_set_halign(fa_left);
draw_set_valign(fa_middle);
draw_set_color(c_yellow);

if (global.game_multiplayer_mode) 
{
	draw_text(x, y, global.game_score_high_multi);
}
else
{
	draw_text(x, y, global.game_score_high_single);
}

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);