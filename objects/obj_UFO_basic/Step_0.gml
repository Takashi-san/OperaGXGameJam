if (y > stop_height && !stop_done) 
{
	stop_done = true;
	stop_speed = speed;
	speed = 0;
	alarm[0] = stop_time * 60;
	alarm[1] = irandom_range(trail_rate_min, trail_rate_max);
}