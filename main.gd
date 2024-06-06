extends Node

func new_game():
	var score = 0
	$Player.start($StartPosition.position)
	$Timer.start()
func end_game():
	pass
func _ready():
	pass 
func _process(delta):
	pass
