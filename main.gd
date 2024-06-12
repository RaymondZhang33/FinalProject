extends Node

@export var mob_scene: PackedScene
var score = 0
var running = false
var once_changed = false

func new_game():
	pass
	
func _process(delta):
	if int($HUD/Timer.get_time_left()) % 2 != 0:
		once_changed = true
	if running and once_changed and int($HUD/Timer.get_time_left()) % 2 == 0:
		$Enemy.position[0] = randi_range(0, 887)
		$Enemy.position[1] = randi_range(0, 648)
		once_changed = false
	

func _on_hud_timesup():
	$HUD/Button.show()
	running = false
	$Enemy.position

func _on_hud_reset():
	score = 0
	$HUD/Score.text = "0"
	running = true
	$Enemy.position[0] = 1035
	$Enemy.position[1] = 335
	$Player.position[0] = 570
	$Player.position[1] = 273
	
func _on_player_area_entered(area):
	if int($HUD/Timer.get_time_left()) != 0:
		score += 1
		$HUD/Score.text = str(score)
