extends CanvasLayer
var time = 60
signal timesup
signal reset

func _on_button_pressed():
	$Button.hide()
	$Timer.start()
	reset.emit()

func _process(delta):
	$TimeStr.text = "Time Remaining: " + str(int($Timer.get_time_left()))
	
func _on_timer_timeout():
	$Timer.stop()
	timesup.emit()
