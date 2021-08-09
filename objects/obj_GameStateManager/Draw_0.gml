if (global.game_ended) 
{
	// gameplay end screen.
	draw_text(10, 10, "Press SPACE to restart.");
	draw_text(10, 30, "Press DOWN to go to title screen.");
	
	if (global.game_multiplayer_mode) 
	{
		draw_text(10, 50, "High: " + string(global.game_score_high_multi));
	}
	else
	{
		draw_text(10, 50, "High: " + string(global.game_score_high_single));
	}
	draw_text(10, 70, "Score: " + string(global.game_score));
	draw_text(10, 90, "difficulty: " + string(global.game_difficulty));
}
else
{
	// gameplay UI.
	if (global.game_multiplayer_mode) 
	{
		draw_text(10, 10, "High: " + string(global.game_score_high_multi));
	}
	else
	{
		draw_text(10, 10, "High: " + string(global.game_score_high_single));
	}
	draw_text(10, 30, "Score: " + string(global.game_score));
	draw_text(10, 50, "difficulty: " + string(global.game_difficulty));
}