if (global.game_start && !game_started) 
{
	game_started = true;
	alarm[0] = base_spawn_rate;
	alarm[1] = base_spawn_rate_alter;
}