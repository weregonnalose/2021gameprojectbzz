extends MarginContainer

const game_scene = preload("mainscene.tscn")
onready var selector_one = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer/HBoxContainer/Selector
onready var selector_two = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer2/HBoxContainer/Selector
onready var selector_three = $CenterContainer/VBoxContainer/CenterContainer2/VBoxContainer/CenterContainer3/HBoxContainer/Selector
var current_selection = 0

func _ready():
	set_current_selection(0)
#This code allows cycling through menu options
func _process(delta):
	if Input.is_action_just_pressed("ui_down") and current_selection < 2:
		current_selection += 1
		set_current_selection(current_selection)
	elif Input.is_action_just_pressed("ui_up") and current_selection > 0:
		current_selection -= 1
		set_current_selection(current_selection)
	elif Input.is_action_pressed("ui_accept"):
		handle_selection(current_selection)
#This code handles the se
func handle_selection(_current_selecton):
	if _current_selecton == 0:
		get_tree().change_scene("res://mainscene.tscn")
		queue_free()
	elif _current_selecton == 1:
		get_tree().change_scene("res://Control54.tscn")
		queue_free()
	elif _current_selecton == 2:
		get_tree().quit()

#This gets the arrow to move to the option that is currently selected
func set_current_selection(_current_selection):
	selector_one.text = ""
	selector_two.text = ""
	selector_three.text = ""
	if _current_selection == 0:
		selector_one.text = ">"
	elif _current_selection == 1:
		selector_two.text = ">"
	elif _current_selection == 2:
		selector_three.text = ">"
