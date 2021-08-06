var _x = random_range(0, room_width);
var _ufo = instance_create_layer(_x, 0, layer, obj_UFO_basic);
_ufo.direction += random_range(-20, 20);

alarm[0] = base_spawn_rate / global.game_difficulty;