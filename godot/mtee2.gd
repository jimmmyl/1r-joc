extends Node2D


# Declare member variables here. Examples:
var velocitat = Vector2(-100,50)



# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees += 25
	position = Vector2(1023,300)
	
func _process(delta):
	position += velocitat * delta
	print (position)
	if position.x >= 1024 or position.x <= 0:
		velocitat.x = -velocitat.x
		
	if position.y >= 600 or position.y <= 0:
		velocitat.y = -velocitat.y
	
	
	
