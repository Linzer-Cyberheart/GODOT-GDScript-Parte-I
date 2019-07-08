extends Node2D

var x = false

func _on_Area2D_body_entered(body):
	if body == Global.Player and x == false:
		$Voice_SFX.play()
		x = true
