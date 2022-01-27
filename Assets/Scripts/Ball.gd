extends KinematicBody2D

var speed: float = 0
var movement: Vector2 = Vector2.ONE

func _ready():
	ToggleBallSpeed()

func _physics_process(delta):
	var body = move_and_collide(movement * speed * delta)
	if body:#different from null
		movement = movement.bounce(body.normal)
		speed += 10

func SetBallDirection() -> void:
	randomize()
	movement.x = [-1,1][randi() % 2]
	movement.y = [-0.5,0.5][randi() % 2]

func ToggleBallSpeed() -> void:
	SetBallDirection()
	if speed == 0:
		speed = 300
	else:
		speed = 0
		position = Vector2(640,360)
