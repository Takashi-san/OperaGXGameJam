// Get inputs
input_x = 0;
input_y = 0;
input_direction = 0;
input_shoot = false;

input_x -= keyboard_check(key_left) ? 1 : 0;
input_x += keyboard_check(key_right) ? 1 : 0;
input_y += keyboard_check(key_down) ? 1 : 0;
input_y -= keyboard_check(key_up) ? 1 : 0;
input_direction = point_direction(0, 0, input_x, input_y);

input_shoot = keyboard_check(key_shoot);