extends Area2D

#Whe
func _physics_process(delta):
	var bodies = get_overlapping_bodies()
	for body in bodies:
		body.queue_free()


