extends CharacterBody2D

@onready var anim = $AnimatedSprite2D

const SPEED = 200.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _ready():
	anim.play("run")

func _physics_process(delta):
	# Add the gravity.
	
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		anim.play("run")
		

	# Handle Jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY
		anim.play("jump")
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
	#	velocity.x = direction * SPEED
	#else:
	#	velocity.x = move_toward(velocity.x, 0, SPEED)
	var direction = 1 # Right
	velocity.x = direction * SPEED
	
	move_and_slide()
