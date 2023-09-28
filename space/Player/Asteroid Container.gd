extends Node2D


var asload = load("res://Asteroid/asteroid.tscn")

func _on_timer_timeout():
	var roid = asload.instantiate()
	roid.position = Vector2(randf(),randf())
	add_child(roid)
