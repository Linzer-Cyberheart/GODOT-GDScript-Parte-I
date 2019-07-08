extends Node2D

var active = false

func _on_Area2D_body_entered(body):
	if body == Global.Player and active == false:
		$Door_SFX.play()
		active = true


func _on_Door_SFX_finished():
	queue_free()
