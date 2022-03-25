extends KinematicBody2D

var velocitat_base = 200
var velocitat = Vector2.ZERO
var gravetat = Vector2.DOWN * 98
var salt = Vector2.UP * 500
var doble_salt = 1




func _physics_process(delta):
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
