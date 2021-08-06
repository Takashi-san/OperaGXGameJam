var _dt = delta_time / 1000000;
global.game_difficulty += _dt * difficulty_scale;

score_timer += _dt;
if (score_timer > 1) 
{
	score_timer -= 1;
	global.game_score += 1;
}

if (global.game_player_died) 
{
	global.game_player_died = false;
	if (global.game_score > global.game_score_high) 
	{
		global.game_score_high = global.game_score;
		ini_open("data.ini");
		ini_write_real("data", "highscore", global.game_score_high);
		ini_close();
	}
}

