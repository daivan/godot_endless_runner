extends Node2D

var floor = preload("res://floor.tscn")

# Called when the node enters the scene tree for the first time.
var numberOfFloors = 1
func _ready():
	var floorItem = floor.instantiate()
	floorItem.position.y = 400
	add_child(floorItem)
	$FloorTimer.start()

func _on_floor_timer_timeout():
	print('is this fired for floor')
	numberOfFloors = numberOfFloors + 1
	var floorItem = floor.instantiate()
	floorItem.position.y = 400
	floorItem.position.x = numberOfFloors * 500
	add_child(floorItem)	
