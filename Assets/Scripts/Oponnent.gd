extends KinematicBody2D

export var offset = 30
export var speed = 0

var velocity = Vector2.ZERO
var ball

func _ready():
	ball = get_parent().find_node("Ball")

func _physics_process(delta):
	if ball.position.y - offset > position.y:
		velocity.y = 1
	elif ball.position.y + offset < position.y:
		velocity.y = -1
	move_and_slide(velocity * speed)
