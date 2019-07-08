extends Node2D

var ative = false

func _on_Area2D_body_entered(body):
	if body.has_node("Paxton") and ative == false:
		$AnimationPlayer.play("van_run")
		ative = true
