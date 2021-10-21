extends KinematicBody2D


var speed_x = 0
var speed_y = 200
export var fire_rate = 0.25
var motion = Vector2()            
var bullet = preload("res://Party_Phil.tscn")
var can_fire = true
export var bullet_speed = 750


func _process(delta):
	look_at(get_global_mouse_position())
	#Instructions for when the player clicks to shoot a projectile
	if Input.is_action_pressed("fire") and can_fire:
		var bullet_instance = bullet.instance()
		bullet_instance.position = $bee_movie.get_global_position()
		bullet_instance.rotation_degrees = rotation_degrees
		bullet_instance.apply_impulse(Vector2(),Vector2(bullet_speed,0).rotated(rotation))
		get_tree().get_root().add_child(bullet_instance)
		can_fire = false
		yield(get_tree().create_timer(fire_rate),"timeout")
		can_fire = true





var speed = 200  # speed in pixels/sec

var velocity = Vector2.ZERO

func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed('ui_right'):
		velocity.x += 1
	if Input.is_action_pressed('ui_left'):
		velocity.x -= 1
	if Input.is_action_pressed('ui_down'):
		velocity.y += 1
	if Input.is_action_pressed('ui_up'):
		velocity.y -= 1
	# Make sure diagonal movement isn't faster

	velocity = velocity.normalized() * speed

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)














