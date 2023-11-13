extends Node2D

var obstacle = preload("res://obstacle.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _ready():
	var obstacleItem = obstacle.instantiate()
	add_child(obstacleItem)
	$Timer.start()


func _on_timer_timeout():
	var obstacleItem = obstacle.instantiate()
	add_child(obstacleItem)	
