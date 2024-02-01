class_name EnemyState
extends State

var player:PlayerController
var self_body:CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await  owner.ready
	#find owning character body
	self_body = owner
	#find the player
	player = get_tree().get_first_node_in_group("player")
	#assert player is not null
	assert(player != null)
