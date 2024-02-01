extends EnemyState

@export var speed:float = 300.0
@export var rotates:bool = true

func physics_update(delta:float) -> void:
	var dir = self_body.global_position.direction_to(player.global_position).normalized()
	if(rotates):
		self_body.look_at(player.global_position)
	self_body.velocity = dir * speed
	self_body.move_and_slide()



