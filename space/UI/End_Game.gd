extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$Score.text = "Score: " + str(Global.score)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_2_pressed():
	get_tree().quit()


func _on_button_pressed():
	Global.score = 0
	Global.lives = 5
	Global.time = 30
	get_tree().change_scene_to_file("res://Player/game.tscn")
