extends KinematicBody2D


var velocitat := 300


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
	direccio = Vector2(0,0)
	if Input.is_action_pressed("mou dreta"):
		direccio+= Vector2(1,0)
		
	if Input.is_action_pressed("mou esquerra"):
		direccio+= Vector2(-1,0)
		
	if Input.is_action_pressed("puja"):
		direccio+= Vector2(0,-1)
	if Input.is_action_pressed("baixa"):
		direccio+= Vector2(0,1)
	position += direccio * velocitat * delta
	

	


func _on_Area2D_body_exited(body):
	position = Vector2(100,160)
	
	


func _on_Area2D3_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D4_body_entered(body):
	get_tree().change_scene("res://final.tscn")


func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://godot/escena1.tscn")


func _on_Area2D2_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D5_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D6_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D40_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D39_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D38_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D37_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D36_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D35_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D34_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D33_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D32_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D31_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D30_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D29_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D28_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D27_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D26_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D25_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D24_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D23_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D22_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D21_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D20_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D19_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D18_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D17_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D16_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D15_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D14_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D13_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D12_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D11_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D10_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D9_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D8_body_entered(body):
	position = Vector2(100,160)


func _on_Area2D7_body_entered(body):
	position = Vector2(100,160)
