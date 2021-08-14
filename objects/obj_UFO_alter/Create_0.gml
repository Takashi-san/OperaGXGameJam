life = 3;
base_speed = 1;
direction = 270;
speed = base_speed * global.game_difficulty;
image_blend = global.color_enemy;

stop_height = 416;
stop_time = 0.6;
stop_done = false;
stop_speed = 0;

trail_scale_min = 0.2;
trail_scale_max = 1;
trail_speed = 7;
trail_fade = 0.2;
trail_rate_min = 2;
trail_rate_max = 8;

shot_reload_step = 90;
shot_reload_step_variance = 30;
shot_reload_step_counter = 30;
shot_reload = random_range(shot_reload_step - shot_reload_step_variance, shot_reload_step + shot_reload_step_variance);