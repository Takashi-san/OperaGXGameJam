global.game_difficulty = 1;
global.game_score = 0;
global.game_player_died = false;

ini_open("data.ini");
var _loaded_high = ini_read_real("data", "highscore", 0);
global.game_score_high = _loaded_high;
ini_close();

global.color_player1 = c_white;
global.color_player2 = c_white;
global.color_enemy = c_red;
global.color_bullet = c_white;

room_goto(room_test);