extends CharacterBody2D

 
@export var max_speed : float = 150
@export var acceleration : float = 250
@export var friction : float = 600

var mostRecentDirection : Vector2

func move(delta:float) -> void:
	var input_direction : Vector2 = Input.get_vector("left", "right", "up", "down")
	input_direction *= max_speed
	if not input_direction.length_squared() > 0.0 && velocity.length_squared() > 0.0:
		velocity = Math.approachVec2(velocity, Vector2.ZERO, friction * delta)
	else:
		velocity = Math.approachVec2(velocity, input_direction, acceleration * delta)
		mostRecentDirection = input_direction.normalized()
	
	move_and_slide()


func _physics_process(delta:float) -> void:
	move(delta)
