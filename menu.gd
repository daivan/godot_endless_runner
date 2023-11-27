extends Control

var simultaneous_scene = preload("res://level_1.tscn").instantiate()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$HighscoreText.text = str(GameState.highscore)
	pass


func _on_start_game_button_button_up():
	GameState.restart_game()
	#get_tree().root.add_child(simultaneous_scene)
	get_tree().change_scene_to_file("res://level_1.tscn")
	print('button pressed')
	pass # Replace with function body.

