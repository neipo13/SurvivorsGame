extends Node2D

var direction:Vector2
var speed:float
var target:Vector2 # for homing

@onready var spriteHolder = $Sprites

func init(dir:Vector2, spd:float, trgt:Vector2):
	direction = dir.normalized()
	speed = spd
	target = trgt
	spriteHolder.look_at(dir)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float) -> void:
	position += direction * speed * delta


func _on_hit_box_area_entered(area:Area2D) -> void:
	pass # Replace with function body.
