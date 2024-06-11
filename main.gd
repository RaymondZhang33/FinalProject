extends Node

@export var mob_scene: PackedScene
var score

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$Timer.start()
	
func end_game():
	pass
	
func _ready():
	pass 
	
func _process(delta):
	pass

func _on_player_hit():
	$HUD.scoreupdate()

