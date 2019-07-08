extends Area2D

var x = false

func _on_CanvasChange1_body_entered(body):
	if body == Global.Player and x == false:
		$VisionMode.color = Color("000000")
		$Timer.start()

func _on_Timer_timeout():
	$Timer.stop()
	$Timer2.start()
	$Karma_Popup/Popup.show()
	$Karma_Popup/AnimationPlayer.play("Karma")

func _on_Timer2_timeout():
	$Timer2.stop()
	$Karma_Popup/Popup.hide()
