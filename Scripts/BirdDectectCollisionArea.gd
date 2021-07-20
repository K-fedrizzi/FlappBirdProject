extends Area2D

signal kill_bird

	



func _on_DectectCollisionArea2D_body_entered(body):
	emit_signal("kill_bird")
