extends Area2D

func _physics_process(_delta): 
	translate(Vector2(-2.5, 0))


func _on_IncreaseScoreArea_body_entered(body):
	body.increase_score()
	
	
func turn_physics_off():
	set_physics_process(false)
