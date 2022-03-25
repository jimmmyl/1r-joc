extends KinematicBody2D

var velocitat_base = 200
var velocitat = Vector2.DOWN * velocitat_base
var gravetat = Vector2.DOWN * 980
var salt = Vector2.UP * 500
var doble_salt = 1



func _physics_process(delta):
	velocitat.x = 0
	if Input.is_action_pressed("mou dreta"):
		velocitat += Vector2.RIGHT * velocitat_base
	if Input.is_action_pressed("mou esquerra"):
		velocitat += Vector2.LEFT * velocitat_base
	if Input.is_action_pressed("puja")and doble_salt!= 0:
		doble_salt -= 1
		velocitat += salt
	if is_on_floor():
		doble_salt = 1
	
	
	velocitat += gravetat * delta
	
	
	
	
	velocitat = move_and_slide(velocitat)
	anima(velocitat)
	
	
	
func anima(velocitat: Vector2):
	var animacio : AnimatedSprite = $AnimatedSprite
	if velocitat.x > 0:
		animacio.flip_h = false
		animacio.play("camina")
	elif velocitat.x < 0:
		animacio.flip_h = true
		animacio.play("camina")
		
	if velocitat.y < -1:
		animacio.play("salta")
		
	if abs(velocitat.x) < 0.1:
		animacio.play("quiet")

