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