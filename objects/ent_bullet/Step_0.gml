self.x += self.xspeed;
self.y += self.yspeed;

if (self.x > room_width + sprite_width / 2 ||
	self.x <             -sprite_width / 2 ||
	self.y > room_height + sprite_width / 2 ||
	self.y <             -sprite_width / 2) {

	instance_destroy();
	}