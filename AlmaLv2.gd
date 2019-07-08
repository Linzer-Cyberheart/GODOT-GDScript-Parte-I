extends Node2D

var x = false
var y = false
var z = false

func _on_Area2D_body_entered(body):
	if body == Global.Player and x == false:
		$AnimationPlayer.play("first")
		x = true


func _on_Area2D2_body_entered(body):
	if body == Global.Player and y == false:
		$AnimationPlayer.play("second")
		y = true


func _on_Area2D3_body_entered(body):
	if body == Global.Player and z == false:
		$AnimationPlayer.play("third")
		z = true
