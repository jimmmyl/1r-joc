extends Node2D


# Declare member variables here. Examples:
export var velocitat = Vector2(100,0)


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(5,300)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	print (position)
	position.y = 150
	if position.x >= 900 or position.x <= 600:
		velocitat[0] = -velocitat[0]
	
