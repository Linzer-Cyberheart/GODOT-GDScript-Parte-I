extends Node2D

func _on_Area2D_body_entered(body):
	if body == Global.Player and not $AudioStreamPlayer.is_playing():
		$Timer.start()
		$AudioStreamPlayer.play()


func _on_Area2D_body_exited(body):
	if body == Global.Player:
		queue_free()


func _on_Timer_timeout():
	$AudioStreamPlayer.stop()
	queue_free()
