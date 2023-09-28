extends Node2D

var enload = load("res://Enemy/enemy.tscn")

func _on_timer_timeout():
	var enemy = enload.instantiate()
	enemy.position = Vector2(200,300)
	add_child(enemy)
