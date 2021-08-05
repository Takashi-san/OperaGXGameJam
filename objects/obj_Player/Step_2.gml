// Resolve screen constraint
move_wrap(true, false, sprite_width/2);
var _room_upper_limit = room_height - sprite_width/2;
var _room_lower_limit = sprite_width/2;
if (y > _room_upper_limit) 
{
	y = _room_upper_limit;
}
else if (y < _room_lower_limit) 
{
	y = _room_lower_limit;
}