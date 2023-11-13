class_name Obstacle
extends CharacterBody2D

@onready var sprite_2d = $Sprite2D as Sprite2D
@onready var visible_notifier = $VisibleNotifier as VisibleOnScreenNotifier2D
@onready var death_timer = $DeathTimer as Timer



var direction : Vector2 = Vector2.LEFT
var speed : float = 50.0


func _physics_process(delta):
	move(delta)
	
func move(delta : float) -> void:
	move_and_collide(direction * speed * delta)
	
func _on_visible_notifier_screen_exited():
	death_timer.start(0.8)


func _on_death_timer_timeout():
	queue_free()


func _on_area_2d_body_entered(body):
	if body.is_in_group("Player"):
		body.queue_free()
