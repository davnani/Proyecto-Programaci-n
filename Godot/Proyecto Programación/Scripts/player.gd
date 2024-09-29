extends CharacterBody2D


const SPEED = 700.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var timer = 0

var timer1=0

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")

	if direction:
		timer1 = 0
		timer += 3*delta
		if timer >= 10:
			timer = 10
		velocity.x = lerpf(SPEED/4*direction,SPEED*direction,timer)
	else:
		velocity.x = lerpf(velocity.x, 0, timer1)
		timer = 0
		timer1+=1*delta
	move_and_slide()
	var collision = move_and_collide(Vector2(direction,0))
	if collision:
		print("Colisión con: ", collision)
