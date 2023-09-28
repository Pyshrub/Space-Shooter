extends CharacterBody2D
var health = 10
var initial_speed = 100

func _ready():
	velocity = Vector2(0,randf()*initial_speed).rotated(randf()*2*PI)
	
func _physics_process(delta):
	move_and_slide()
	if velocity.x <= 200:
		velocity.x = 200
	if velocity.x >= -200:
		velocity.x = -200
	if velocity.y >= 200:
		velocity.y =200
	if velocity.y <= -200:
		velocity.y = -200
	position.x = wrapf(position.x, 0, Global.VP.x)
	position.y = wrapf(position.y, 0, Global.VP.y)
func damage(d):
	health -= d
	if health <= 0:
		Global.update_score(100)
		queue_free()




