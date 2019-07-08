extends Node2D

var x = false

func _on_Area2D_body_entered(body):
	if body == Global.Player or body == Global.Paxton and x == false:
		$AnimationPlayer.play("Open")
		x = true


func _on_Area2D_body_exited(body):
	if body == Global.Player or body == Global.Paxton and x == true:
		$AnimationPlayer.play("Close")
		x = false
