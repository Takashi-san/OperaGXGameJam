if (global.game_start) 
{
	speed = player_speed;
	
	if (input_action) 
	{
		direction += 180;
	}
	
	if (direction == 0) 
	{
		sprite_index = spr_Player2_tiltRight;
	}
	else
	{
		sprite_index = spr_Player2_tiltLeft;
	}

	if (life <= 0) 
	{
		instance_destroy();
		CreateRadialParticle(8, spr_Particle_medium, player_color, 2, 4, 0.7);
		CreateRadialParticle(16, spr_Particle_small, player_color, 0.5, 3, 0.5); 

		if (player_id == 1) 
		{
			global.game_player1_died = true;
		}
		else if (player_id == 2) 
		{
			global.game_player2_died = true;
		}
		
		audio_play_sound(sfx_explosion3, 1, false);
	}
}