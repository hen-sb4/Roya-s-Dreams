// movimentação WASD
if keyboard_check(ord("W")) { self.y = self.y - self.movement_speed;}
if keyboard_check(ord("A")) { self.x = self.x - self.movement_speed;}
if keyboard_check(ord("S")) { self.y = self.y + self.movement_speed;}
if keyboard_check(ord("D")) { self.x = self.x + self.movement_speed;}

// botão para atirar + timer entre tiros
if (keyboard_check(vk_space)) {
	if (self.last_shot_time + 1 / self.shots_per_second <= current_time / 1000) {
		var shot = instance_create_depth(self.x, self.y, self.depth + 1, ent_bullet);
		shot.friendly = true;
		self.last_shot_time = current_time / 1000;
	}
}

if ((self.iframe_time + self.iframe_duration) > (current_time / 1000)) {
	self.sprite_index = spr_player_iframes;
} else {
	self.sprite_index = spr_player;
}