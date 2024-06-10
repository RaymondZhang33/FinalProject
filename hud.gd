extends CanvasLayer
var score = 0
var time = 60

func scoreupdate():
	$Score.text = str(score)
func _on_button_pressed():
	$Button.hide()
	$Timer.start()
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$TimeStr.text = "Time Remaining: " + str(int($Timer.get_time_left()))


func _on_timer_timeout():
	$TimeStr.text = str(60)
