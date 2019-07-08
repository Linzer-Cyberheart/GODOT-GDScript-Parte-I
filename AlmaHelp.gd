extends Node2D

func _ready():
	get_node(".").hide()

var enter = false

func _on_Area2D_body_entered(body):
	if body == Global.Player and enter == false:
		$Timer.start()
		get_node(".").show()
		enter = true


func _on_Timer_timeout():
	queue_free()
