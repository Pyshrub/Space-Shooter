extends Area2D
var speed = 10
var damage = 1
var velocity = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	velocity = Vector2(0,-speed).rotated(rotation)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	position = position + velocity


func _on_timer_timeout():
	queue_free()


func _on_body_entered(body):
	queue_free()
	

