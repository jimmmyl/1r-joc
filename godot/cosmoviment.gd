extends KinematicBody2D

var velocitat_base = 120
var velocitat = Vector2.DOWN * velocitat_base
var gravetat = Vector2.DOWN * 980
var salt = Vector2.UP * 300
var doble_salt = 2
var positio = Vector2(40,300)
var positio2 = Vector2(535,-350)



func _physics_process(delta):
	
	velocitat.x = 0
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if is_on_floor():
		doble_salt = 2
	if Input.is_action_just_pressed("puja") and doble_salt > 0:
		doble_salt -= 1
		velocitat = salt

	
	
	velocitat += gravetat * delta
	
	
	
	
	velocitat = move_and_slide(velocitat, Vector2.UP)
	anima(velocitat)
	
	
	
func anima(velocitat: Vector2):
	var animacio : AnimatedSprite = $AnimatedSprite
	if velocitat.x > 0:
		animacio.flip_h = false
		animacio.play("camina")
	elif velocitat.x < 0:
		animacio.flip_h = true
		animacio.play("camina")
		
	if velocitat.y < 0:
		animacio.play("salta")
		
	if abs(velocitat.x) < 0.1:
		animacio.play("quiet")



func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://godot/escena1.tscn")


func _on_Area2D2_body_exited(body):
	position = positio


func _on_Area2D3_body_entered(body):
	position = Vector2(535,350)


func _on_Area2D53_body_entered(body):
	get_tree().change_scene("res://princ2.tscn")
