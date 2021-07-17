extends Position2D

const PIPE = preload("res://Scenes/Pipe.tscn")

func spawn_pipe():
	var pipe_instanced = PIPE.instance()
	randomize()
	var random_pipe_position = rand_range(-90,45)
	pipe_instanced.position = Vector2(0, random_pipe_position)
	add_child(pipe_instanced)

func _on_Timer_timeout():
	spawn_pipe()
