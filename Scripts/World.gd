extends Node2D

onready var player_ref = get_node("Bird")
onready var backgroud_ref = get_node("Background/AnimationPlayer")
onready var pipe_spawner = get_node("PipSpawner")

func _ready():
	player_ref.connect("game_over", backgroud_ref, "stop_parallax")
	player_ref.connect("game_over", pipe_spawner, "stop_pipes_spawn")
	
