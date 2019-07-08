extends Node2D


func _on_Area2D_body_entered(body):
	if body == Global.Player and not $AnimationPlayer.is_playing():
		$Timer2.start()
		$AnimationPlayer.play("idle")
		$AudioStreamPlayer.play()


func _on_Timer_timeout():pass


func _on_Timer2_timeout():
	queue_free()


func _on_Area2D_body_exited(body):
	$Timer.start()
