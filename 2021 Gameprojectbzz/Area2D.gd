extends Area2D


var speed_x = 200
var UP = Vector2(0, -1)
var speed_y = 200
var motion = Vector2(speed_x, speed_y)         


# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)

func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		if body.name == "MrMegaBob":
			get_tree().change_scene("Control.tscn")
			get_tree().reload_current_scene()
		elif body.name == "fireball":
			body.queue_free()
			print ("dfgjhfhifyjifhjiufhhifty")
			
			

