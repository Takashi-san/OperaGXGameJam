global.game_difficulty = 1;
global.game_score = 0;
global.game_player1_died = false;
global.game_player2_died = false;
global.game_multiplayer_mode = false;
global.game_ended = false;

ini_open("data.ini");
var _loaded_high = ini_read_real("data", "highscore_single", 0);
global.game_score_high_single = _loaded_high;
_loaded_high = ini_read_real("data", "highscore_multi", 0);
global.game_score_high_multi = _loaded_high;
ini_close();

global.color_player1 = c_blue;
global.color_player2 = c_green;
global.color_enemy = c_red;

global.key_player1 = vk_space;
global.key_player2 = vk_down;

room_goto(room_main);