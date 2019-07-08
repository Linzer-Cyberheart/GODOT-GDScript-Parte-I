extends Node2D

var can_click = false
var open = true

func _ready():
	$Smoke.emitting = true

func _on_Area2D_body_entered(body):
	if body == Global.Player and not $Opening/Timer.start():
		$Opening/Timer.start()
		can_click = true
		

func _input(event):
	if Input.is_mouse_button_pressed(BUTTON_LEFT) and can_click:
		can_click = false
		toggle_door()

func toggle_door():
	if open == true:
		open_door()
	elif open == false:
		close_door()


func open_door():
	$Opening/Open.play("Open")
	open = false
	
func close_door():
	$Opening/Open.play_backwards("Closing_Door")
	open = true


func _on_Timer_timeout():
	can_click = true
