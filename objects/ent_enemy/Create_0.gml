event_inherited();

self.health = 5;

self.shots_per_second = 2;
self.last_shot_time = 0;

self.OnDamage = function(bullet) {
	self.health -= bullet.damage;
	instance_destroy(bullet);
	if (self.health <= 0) {
		self.Die();
	}
}

self.Die = function() {
	instance_destroy();
}