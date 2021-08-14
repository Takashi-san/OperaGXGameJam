instance_destroy();
CreateRadialParticle(8, spr_Particle_small, bullet_color, 2, 4, 0.5); 

other.life -= bullet_damage;
if (other.life > 0)
{
	audio_play_sound(sfx_hit1, 1, false);
}