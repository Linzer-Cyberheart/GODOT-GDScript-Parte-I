extends Node2D

func _ready():
	$"Black Screen/NinePatchRect".hide()
	$AnimationPlayer.play("Goodbye")
	get_node(".").light_mask = false
	$Timer.start()
	$Timer2.start()
	$Timer3.start()
	$Timer4.start()

func _on_Timer_timeout():
	$"Black Screen/NinePatchRect".show()


func _on_Timer2_timeout():
	$"Black Screen/NinePatchRect".hide()


func _on_Timer3_timeout():
	$"Black Screen/NinePatchRect".show()


func _on_Timer4_timeout():
	get_tree().change_scene("res://Scenes/Levels/Level2.tscn")


func _on_Timer5_timeout():
	$Ending.play()
