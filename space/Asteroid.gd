extends CharacterBody2D
var health = 10
var initial_speed = 100
func _ready():
	velocity = Vector2(0,randf()*initial_speed).rotated(randf()*2*PI)
	
func _physics_process(delta):
	move_and_slide()
	position.x = wrapf(position.x, 0, 1152)
	position.y = wrapf(position.y, 0, 648)
func damage(d):
	health -= d
	if health <= 0:
		queue_free()
