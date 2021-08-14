if (!global.game_start) 
{
	if (global.game_multiplayer_mode) 
	{
		if (global.game_player1_confirm && global.game_player2_confirm) 
		{
			global.game_start = true;
		}
	}
	else
	{
		if (global.game_player1_confirm) 
		{
			global.game_start = true;
		}
	}
}
else if (global.game_ended) 
{
	if (keyboard_check_pressed(global.key_player1) || keyboard_check_pressed(global.key_player2))
	{
		if (global.game_multiplayer_mode) 
		{
			if (global.game_score > global.game_score_high_multi)  
			{ 
				global.game_score_high_multi = global.game_score; 
				ini_open("data.ini"); 
				ini_write_real("data", "highscore_multi", global.game_score_high_multi); 
				ini_close(); 
			}
		}
		else
		{
			if (global.game_score > global.game_score_high_single)  
			{ 
				global.game_score_high_single = global.game_score; 
				ini_open("data.ini"); 
				ini_write_real("data", "highscore_single", global.game_score_high_single); 
				ini_close(); 
			}
		}
		
		if (keyboard_check_pressed(global.key_player1))
		{
			if (global.game_multiplayer_mode) 
			{
				room_goto(room_game_multi);
			}
			else
			{
				room_goto(room_game_single);
			}
		}
		else if (keyboard_check_pressed(global.key_player2))
		{
			room_goto(room_main);
		}
	}
}
else
{
	var _dt = delta_time / 1000000;
	global.game_difficulty += _dt * difficulty_scale;

	score_timer += _dt;
	if (score_timer > 1) 
	{
		score_timer -= 1;
		global.game_score += 1;
	}
	
	if (global.game_multiplayer_mode) 
	{
		if (global.game_player1_died && global.game_player2_died) 
		{
			global.game_ended = true;
		}
	}
	else
	{
		if (global.game_player1_died) 
		{
			global.game_ended = true;
		}
	}
	
	if (global.game_multiplayer_mode) 
	{
		if (global.game_streak >= (global.game_streak_threshold * global.game_streak_threshold_mod * global.game_streak_threshold_multiplayer_mod)) 
		{
			global.game_streak_threshold += global.game_streak_threshold;
			global.game_streak = 0;
		}
	}
	else
	{
		if (global.game_streak >= (global.game_streak_threshold * global.game_streak_threshold_mod)) 
		{
			global.game_streak_threshold += global.game_streak_threshold;
			global.game_streak = 0;
		}
	}
}







