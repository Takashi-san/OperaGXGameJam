draw_set_halign(fa_center);
draw_set_valign(fa_middle);

if (global.game_multiplayer_mode) 
{
	draw_text(x, y, "SOLO");
}
else
{
	draw_text(x, y, "DUO");
}
