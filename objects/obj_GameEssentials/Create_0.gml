global.game_difficulty = 1;
global.game_score = 0;
global.game_player1_died = false;
global.game_player2_died = false;
global.game_player1_confirm = false;
global.game_player2_confirm = false;
global.game_multiplayer_mode = false;
global.game_ended = false;
global.game_start = false;
global.game_streak = 0;
global.game_streak_threshold = 1;
global.game_streak_threshold_mod = 3;
global.game_streak_threshold_multiplayer_mod = 2;

ini_open("data.ini");
var _loaded_high = ini_read_real("data", "highscore_single", 0);
global.game_score_high_single = _loaded_high;
_loaded_high = ini_read_real("data", "highscore_multi", 0);
global.game_score_high_multi = _loaded_high;
ini_close();

global.color_player1 = $d78c50;
global.color_player2 = $64b964;
global.color_enemy = $1f25d6;

global.key_player1 = vk_space;
global.key_player2 = vk_right;

draw_set_font(font_Upheaval);

//audio_play_sound(music, 2, true);

room_goto(room_main);