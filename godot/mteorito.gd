extends Node2D


var velocitat := -100
var direccio = Vector2(0,0)

# Called when the node


# Called when the node enters the scene tree for the first time.
func _ready():
	rotation_degrees = 0
	position = Vector2(1100,150)
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += velocitat * delta
	print (position)
	if position.x >= 900 or position.x <= 600:
		velocitat[0] = -velocitat[0]
	
