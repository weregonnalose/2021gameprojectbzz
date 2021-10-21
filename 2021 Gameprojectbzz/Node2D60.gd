extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.


func _process(delta):
	var speed_x = 0
	var speed_y = -200
	var UP = Vector2(0, -1)
	var motion = Vector2(speed_x, speed_y)            
	motion = move_and_slide(motion, UP)
	position = position + motion *delta

