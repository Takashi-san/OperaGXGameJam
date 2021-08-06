move_wrap(true, false, sprite_width/2);
if (y > room_height + sprite_height)
{
	instance_destroy();
}
if (life <= 0)
{
	instance_destroy();
	CreateRadialParticle(5, spr_Particle_medium, global.color_enemy, 2, 4, 0.7);
	CreateRadialParticle(10, spr_Particle_small, global.color_enemy, 0.5, 3, 0.5); 
}