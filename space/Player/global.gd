extends Node


# Called when the node enters the scene tree for the first time.
func _process(delta):
	if Input.is_action_pressed("Quit"):
		get_tree().quit()
