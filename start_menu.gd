extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_pressed():
	print('pressed on girl')
	pass # Replace with function body.


func _on_select_girl_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		GameState.restart_game()
		get_tree().change_scene_to_file("res://level_1_girl.tscn")





func _on_select_boy_input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.pressed):
		GameState.restart_game()
		get_tree().change_scene_to_file("res://level_1.tscn")
