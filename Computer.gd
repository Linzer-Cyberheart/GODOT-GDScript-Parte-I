extends Area2D

var can_click = false
var combination

export var combination_lenght = 4
export var lock_group = ""

signal combination

func _ready():
	$Light2D.enabled = true
	generate_combination()
	emit_signal("combination", combination, lock_group)
#	$Label.text = lock_group


func generate_combination():
	var combination_generator = get_tree().get_root().find_node("CombinationGenerator", true, false)
	combination = combination_generator.generate_combination(combination_lenght)
	set_popup_text()

func _on_Computer_body_entered(body):
	can_click = true


func _on_Computer_body_exited(body):
	can_click = false
	$Light2D.enabled = true
	$CanvasLayer/ComputerPopup.hide()
	

func _input_event(viewport, event, shape_idx):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and can_click:
		$CanvasLayer/ComputerPopup.popup_centered()
		$Light2D.enabled = true
		Global.popup = $CanvasLayer/ComputerPopup.show()
		get_tree().call_group("interface", "showpopup", "popup_centered")

		
func set_popup_text():
	$CanvasLayer/ComputerPopup.set_text(combination)
	
	