extends Node2D

onready var timer = get_node("Timer")
var DisplayValue = 0
var a = RandomNumberGenerator.new()
var sound = 0
var spawn_rate = 0.35
func _ready():
	timer.set_wait_time(spawn_rate)
	timer.start()
	a.randomize()
	var sound = a.randi_range(1,4)
	get_node("sound"+str(sound)).play()
pass





#This determines when the code below runs
func _on_Timer_timeout():
	timer.set_wait_time(spawn_rate)
	var rand = RandomNumberGenerator.new()
	var enemyscene = load("res://Node2D.tscn")
	var enemyscene2 = load("res://shrek.tscn")
	var enemyscene3 = load("res://shrek2.tscn")
	var enemyscene4 = load("res://lightning.tscn")
	var enemyscene5 = load("res://Yrider.tscn")
	var enemyscene6 = load("res://Yrider_right.tscn")
	var enemyscene7 = load("res://Node2D60.tscn")
	
	#This is the enemy spawn  script that  picks a random enemy to spawn each 
	#time it runs and it gives the spawn conditions for the enemies
	var screen_size = get_viewport().get_visible_rect().size
	var r = floor(rand_range(1,9))
	spawn_rate -= 0.001
	print(spawn_rate)
	print(r)
	if r == 1 :
		var enemy = enemyscene.instance()
		rand.randomize()
		var x = rand.randf_range(0, screen_size.x)
		rand.randomize()
		var y = rand.randf_range(0, -100)
		enemy.position.y = y
		enemy.position.x = x
		add_child(enemy)
	elif r == 2:
		var enemy2 = enemyscene2.instance()
		rand.randomize()
		var x = rand.randf_range(0, screen_size.x)
		rand.randomize()
		var y = rand.randf_range(0, -100)
		enemy2.position.y = y
		enemy2.position.x = x
		add_child(enemy2)
	elif r == 3:
		var enemy3 = enemyscene3.instance()
		rand.randomize()
		var x = rand.randf_range(0, screen_size.x)
		rand.randomize()
		var y = rand.randf_range(0, -100)
		enemy3.position.y = y
		enemy3.position.x = x
		add_child(enemy3)
	elif r == 4 :
		var enemy = enemyscene.instance()
		rand.randomize()
		var x = rand.randf_range(0, screen_size.x)
		rand.randomize()
		var y = rand.randf_range(0, -100)
		enemy.position.y = y
		enemy.position.x = x
		add_child(enemy)
	elif r == 5 :
		var enemy4 = enemyscene4.instance()
		rand.randomize()
		var x = rand.randf_range(0, screen_size.x)
		rand.randomize()
		var y = rand.randf_range(0, -100)
		enemy4.position.y = y
		enemy4.position.x = x
		add_child(enemy4)
	elif r == 6 :
		var enemy5 = enemyscene5.instance()
		rand.randomize()
		var x = rand.randf_range(760, 761)
		rand.randomize()
		var y = rand.randf_range(0, 1000)
		enemy5.position.y = y
		enemy5.position.x = x
		add_child(enemy5)
	elif r == 7 :
		var enemy6 = enemyscene6.instance()
		rand.randomize()
		var x = rand.randf_range(-10, -9)
		rand.randomize()
		var y = rand.randf_range(0, 1000)
		enemy6.position.y = y
		enemy6.position.x = x
		add_child(enemy6)
	elif r == 8 :
		var enemy7 = enemyscene7.instance()
		rand.randomize()
		var x = rand.randf_range(10, 740)
		rand.randomize()
		var y = rand.randf_range(1050, 1051)
		enemy7.position.y = y
		enemy7.position.x = x
		add_child(enemy7)







func _on_Area2D2_body_entered(body):
	pass # Replace with function body.
