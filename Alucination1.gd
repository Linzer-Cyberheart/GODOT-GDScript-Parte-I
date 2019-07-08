extends Node2D

var active = false

func _ready():
	get_node(".").hide()

func _on_Area2D_body_entered(body):
	if body == Global.Player and active == false:
		get_node(".").show()
		$Timer.start()
		$Ambience.play()
		active = true


func _on_Timer_timeout():
	queue_free()