extends Node2D

var x = false

func _ready():
	get_node(".").hide()

func _on_Area2D_body_entered(body):
	if body == Global.Player and x == false:
		get_node(".").show()
		$AnimationPlayer.play("Walk")
		x = true


func _on_Area2D_body_exited(body):
	if body == Global.Player and x == true:
		queue_free()
