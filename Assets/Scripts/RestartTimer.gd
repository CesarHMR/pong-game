extends Timer

var timerText: Label

func _ready() -> void:
	timerText = get_parent().get_node("TimerText")
	print(timerText)

func _process(delta: float) -> void:
	timerText.visible = time_left != 0
	timerText.text = str(int(round(time_left)) + 1)
