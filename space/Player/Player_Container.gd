extends Node2D


# Called when the node enters the scene tree for the first time.
var Player = load("res://Player/Player.tscn")

func _physics_process(_delta):
	if get_child_count() == 0:
		var player = Player.instantiate()
		player.position = Vector2(512,300)
		add_child(player)
