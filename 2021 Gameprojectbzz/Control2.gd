extends MarginContainer



onready var selector_one = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
var current_selection = 0

func _ready():
	set_current_selection(0)

func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		handle_selection(current_selection)

func handle_selection(_current_selecton):
	if _current_selecton == 0:
		#get_parent().add_child(game_scene.instance())
		queue_free()



func set_current_selection(_current_selection):
	selector_one.text = ""
	if _current_selection == 0:
		selector_one.text = ">"

