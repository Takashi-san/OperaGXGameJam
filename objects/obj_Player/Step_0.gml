if (input_action) 
{
	// Resolve movement
	direction += 180;

	// Resolve shooting
	CreatePlayerBullet(bullet_type);
}

if (life <= 0) 
{
	instance_destroy();
	CreateRadialParticle(8, spr_Particle_medium, global.color_player1, 2, 4, 0.7);
	CreateRadialParticle(16, spr_Particle_small, global.color_player1, 0.5, 3, 0.5); 
	global.game_player_died = true;
}