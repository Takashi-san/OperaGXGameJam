// Resolve movement
direction = input_direction;
speed = input_x != 0 || input_y != 0 ? movement_speed : 0;

// Resolve shooting
bullet_fire_rate_cooldown++;
if (input_shoot && bullet_fire_rate_cooldown > bullet_fire_rate)
{
	bullet_fire_rate_cooldown = 0;
	CreatePlayerBullet(bullet_type);
}