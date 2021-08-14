move_wrap(true, false, sprite_width/3);
if (y > room_height + sprite_height)
{
	instance_destroy();
}
if (life <= 0)
{
	instance_destroy();
	CreateRadialParticle(8, spr_Particle_medium, global.color_enemy, 2, 4, 0.7);
	CreateRadialParticle(16, spr_Particle_small, global.color_enemy, 0.5, 3, 0.5); 
	global.game_streak += 1;
	instance_create_layer(x, y, layer, obj_score_up);
	audio_play_sound(sfx_explosion1, 1, false);
	//global.game_score += 3;
}