extends Node2D

var entered = false

func _ready():
	get_node(".").hide()

func _on_Area2D_body_entered(body):
	if body == Global.Player and entered == false:
		get_node(".").show()
		$Timer.start()
		entered = true

func _on_Timer_timeout():
	queue_free()



func _on_BodyCloser_body_entered(body):
	if body == Global.Player:
		queue_free()
