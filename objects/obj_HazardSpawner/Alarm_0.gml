var _x = random_range(16, room_width - 16);
var _ufo = instance_create_layer(_x, 0, layer, obj_UFO_basic);
_ufo.direction += random_range(0, 0);

var base = base_spawn_rate / global.game_difficulty;
base = random_range(base - rate_variance, base + rate_variance);
alarm[0] = base <= 0 ? random_range(1, 5) : base;