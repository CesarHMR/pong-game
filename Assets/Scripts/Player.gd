extends KinematicBody2D

export var speed = 400
enum state {up, down, stop}

var playerState = state.stop
var velocity = Vector2.ZERO

# warning-ignore:unused_argument
func _physics_process(delta):
	match(playerState):
		state.up:
			velocity.y = -1
		state.down:
			velocity.y = 1
		state.stop:
			velocity.y = 0
# warning-ignore:return_value_discarded
	move_and_slide(velocity * speed)

# warning-ignore:unused_argument
func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("ui_up"):
		playerState = state.up
	elif Input.is_action_just_pressed("ui_down"):
		playerState = state.down
	elif Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
		if !Input.is_action_pressed("ui_up") and !Input.is_action_pressed("ui_down"):
			playerState = state.stop
		elif Input.is_action_pressed("ui_up"):
			playerState = state.up
		elif Input.is_action_pressed("ui_down"):
			playerState = state.down
