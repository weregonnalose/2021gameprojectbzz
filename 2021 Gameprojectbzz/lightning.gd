extends KinematicBody2D

onready var timer = get_node("Timer")






const UP = Vector2(0, -1)
const GRAVITY = 11
const SPEED = 100
var velocity = Vector2.ZERO
var speed1000 = -200
var motion = Vector2()            
var left = Vector2(-1, 0)
var right = Vector2(1, 0)
var superspeed = Vector2(0, 1)
var direction = left
var superspeed2 = 1000

func _physics_process(delta):
	
	velocity.y += GRAVITY
	velocity = move_and_slide(velocity)

		
		
	
	#instructions for enemies when they hit the sides of the screen
	if is_on_wall():
		if direction == left:
			direction = right
	 elif direction == right:
			direction = left
			



