extends Node2D

var x = false

func _ready():
	get_node(".").hide()

func _on_DetectArea_body_entered(body):
	if body == Global.Player and x == false:
		get_node(".").show()
		$Timer.start()
		$Alma_Child/AudioStreamPlayer2D.play()
		$AnimationPlayer.play("Push")
		x = true


func _on_Timer_timeout():
	queue_free()
