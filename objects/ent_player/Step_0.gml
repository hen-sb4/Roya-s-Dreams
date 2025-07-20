event_inherited();

// movimentação WASD
if keyboard_check(ord("W")) { self.y = self.y - self.movement_speed;}
if keyboard_check(ord("A")) { self.x = self.x - self.movement_speed;}
if keyboard_check(ord("S")) { self.y = self.y + self.movement_speed;}
if keyboard_check(ord("D")) { self.x = self.x + self.movement_speed;}

// botão para atirar + timer entre tiros
if (keyboard_check(vk_space) && can_fire) {
	var now = get_timer();
	if (keyboard_check(vk_space)) {
	    if (now - last_fire_time >= fire_delay) {
	        instance_create_depth(x, y, depth + 1, ent_bullet);
	        last_fire_time = now;
	    }
	}
}