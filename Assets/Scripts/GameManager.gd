extends Node

var pointsLeft = 0
var pointsRight = 0

var leftText = 0
var rightText = 0

func _ready() -> void:
	leftText = $TextLeft
	rightText = $TextRight

func _on_GoalRight_body_entered(body):
	pointsLeft += 1
	print("points left:" + str(pointsLeft))
	leftText.text = "points right:" + str(pointsRight)

func _on_GoalLeft_body_entered(body):
	pointsRight += 1
	rightText.text = "points right:" + str(pointsRight)
