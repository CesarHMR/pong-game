extends Node

var leftText
var rightText

var pointsLeft := 0
var pointsRight := 0

func _ready() -> void:
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
	print("reset")
	get_tree().call_group("BallGroup","ToggleBallSpeed")
	get_node("RestartTimer").start()

func _on_RestartTimer_timeout() -> void:
	get_tree().call_group("BallGroup","ToggleBallSpeed")
