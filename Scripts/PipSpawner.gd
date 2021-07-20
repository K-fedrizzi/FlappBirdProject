extends Position2D

signal stop_pipe

const PIPE = preload("res://Scenes/Pipe.tscn")
onready var time = get_node("Timer")

func spawn_pipe():
	var pipe_instanced = PIPE.instance()
	randomize()
	var random_pipe_position = rand_range(-90,45)
	pipe_instanced.position = Vector2(0, random_pipe_position)
	var _connect = connect("stop_pipe", pipe_instanced, "turn_physics_off")
	add_child(pipe_instanced)

func _on_Timer_timeout():
	spawn_pipe()


func stop_pipes_spawn():
	time.stop()
	emit_signal("stop_pipe")
