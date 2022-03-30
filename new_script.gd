extends Sprite


# Declare member variables here. Examples:
export var velocitat = Vector2(600,600)


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 90
	position = Vector2(5,300)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	print (position)
	if velocitat.x < 0:
		rotation_degrees -= 15
	if velocitat.x > 0:
		rotation_degrees += 15
		
	if position.x >= 1024 or position.x <= 0:
		velocitat[0] = -velocitat[0]
	
