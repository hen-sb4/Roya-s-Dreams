// movimentação WASD
if keyboard_check(ord("W")) { self.y = self.y - self.movement_speed;}
if keyboard_check(ord("A")) { self.x = self.x - self.movement_speed;}
if keyboard_check(ord("S")) { self.y = self.y + self.movement_speed;}
if keyboard_check(ord("D")) { self.x = self.x + self.movement_speed;}

// botão para atirar
if keyboard_check(vk_space) {
	instance_create_depth(self.x, self.y, self.depth + 1, ent_bullet);
}