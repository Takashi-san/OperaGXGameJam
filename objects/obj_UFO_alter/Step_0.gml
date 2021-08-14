if (y > stop_height && !stop_done) 
{
	global.game_streak = 0;
	global.game_streak_threshold = 1;
	stop_done = true;
	stop_speed = speed;
	speed = 0;
	alarm[0] = (stop_time / (global.game_difficulty / 2)) * 60;
	alarm[1] = irandom_range(trail_rate_min, trail_rate_max);
}

shot_reload_step_counter++;
if (shot_reload_step_counter > shot_reload) 
{
	shot_reload_step_counter = 0;
	shot_reload = random_range(shot_reload_step - shot_reload_step_variance, shot_reload_step + shot_reload_step_variance);
	CreateEnemyBullet(0, global.color_enemy);
}