extends Node
var ball
var leftText
var rightText

var pointsLeft := 0
var pointsRight := 0

func _ready() -> void:
	ball = $Ball
	leftText = $TextLeft
	rightText = $TextRight

func _on_GoalRight_body_entered(body):
	pointsLeft += 1
	leftText.text = str(pointsLeft)
	ResetGame()
	
func _on_GoalLeft_body_entered(body):
	pointsRight += 1
	rightText.text = str(pointsRight)
	ResetGame()

func ResetGame():
	ball.position = Vector2(400,300)
	pass
