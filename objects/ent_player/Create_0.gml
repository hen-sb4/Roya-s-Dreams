event_inherited();

self.friendly = true;

self.health = 10;
self.iframe_time = 0;
self.iframe_duration = 1;

self.shots_per_second = 4;
self.last_shot_time = 0;

self.movement_speed = 5;

self.Invencibility = function() {
	return ((self.iframe_time + self.iframe_duration) > (current_time / 1000));
}

self.OnDamage = function(bullet) {
	
	if (self.Invencibility()) {
		instance_destroy(bullet);
		return;
	}
	
	self.health -= bullet.damage;
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.Die();
	}
	self.iframe_time = current_time / 1000;
}

self.Die = function() {
	show_debug_message("You died!");
	//instance_destroy();
}