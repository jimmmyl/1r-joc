extends Area2D


var velocitat = Vector2(-150,100)



# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees += 25
	position = Vector2(800,600)
	
func _process(delta):
	position += velocitat * delta
	rotation_degrees += -5
	if position.x >= 2300 or position.x <= -100:
		velocitat.x = -velocitat.x
		
	if position.y >= 750 or position.y <= -350:
		velocitat.y = -velocitat.y
