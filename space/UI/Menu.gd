extends Control



	


func _on_quit_pressed():
	get_tree().quit()


func _on_reset_pressed():
	Global.reset()
	get_tree().change_scene_to_file("res://Player/game.tscn")
