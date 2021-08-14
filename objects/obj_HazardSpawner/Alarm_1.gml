var _x = random_range(16, room_width - 16);
var _ufo = instance_create_layer(_x, 0, layer, obj_UFO_alter);
var rand = irandom_range(0, 1);
if (rand == 1) 
{
	_ufo.direction += alter_anlge;	
}
else
{
	_ufo.direction -= alter_anlge;
}

var base = base_spawn_rate_alter / global.game_difficulty;
base = random_range(base - rate_variance, base + rate_variance);
alarm[1] = base <= 0 ? random_range(1, 3) : base;