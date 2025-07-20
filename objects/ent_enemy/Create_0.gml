event_inherited();

self.health = 10;

self.shots_per_second = 4;
self.last_shot_time = 0;

self.OnDamage = function(bullet) {
	self.health -= bullet.damage;
	instance_destroy(bullet);
	if (self.health <= 0) {
		instance_destroy();
	}
}