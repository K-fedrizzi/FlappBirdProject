extends KinematicBody2D

signal increase_score
signal game_over 

export var gravity = 400
export var jump_speed = -200
var velocity = Vector2()

var score = 0

func _physics_process(delta):
	velocity.y += gravity * delta
	velocity = move_and_slide(velocity)
	jump()
	
func jump():
	if Input.is_action_just_pressed("Jump"):
		velocity.y = jump_speed



func increase_score():
	score += 1 
	emit_signal("increase_score", score)
	#print(score)



func on_kill_bird():
	set_physics_process(false)
	emit_signal("game_over")
