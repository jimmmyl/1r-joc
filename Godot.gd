extends Area2D



var velocitat := 10

var direccio = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	rotation_degrees = 0
	position = Vector2(90,150)
	
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	
	if Input.is_action_pressed("mou dreta"):
		direccio+= Vector2(1,0)
		rotation_degrees = 25
	if Input.is_action_pressed("mou esquerra"):
		direccio+= Vector2(-1,0)
		rotation_degrees = -25
	if Input.is_action_pressed("puja"):
		direccio+= Vector2(0,-1)
	if Input.is_action_pressed("baixa"):
		direccio+= Vector2(0,1)
	position += direccio * velocitat * delta
	





func _on_Area2D3_body_entered(body):
	position = Vector2(40,40)


func _on_Area2D_body_exited(body):
	position = Vector2(40,40)
