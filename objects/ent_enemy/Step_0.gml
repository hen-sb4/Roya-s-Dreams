if (keyboard_check(vk_space)) {
	if (self.last_shot_time + 1 / self.shots_per_second <= current_time / 1000) {
		var shot = instance_create_depth(self.x, self.y, self.depth + 1, ent_bullet);
		self.last_shot_time = current_time / 1000;
	}
}