extends Node2D


# Declare member variables here. Examples:
export var velocitat = Vector2(-100,0)


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(1100,300)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
