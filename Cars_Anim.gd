extends Node2D

func _on_Timer_timeout():
	$AnimationPlayer.play("Moving")
	