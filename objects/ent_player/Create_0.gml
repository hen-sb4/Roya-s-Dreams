event_inherited();

can_fire = true;
fire_delay = 250000;
last_fire_time = -fire_delay;
my_time_source = time_source_create(
    time_source_game,
    1.0,
    time_source_units_seconds,
    function(_paused) { }
);

self.movement_speed = 5;