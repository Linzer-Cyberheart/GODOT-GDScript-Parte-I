extends Node2D

var x = false

func _on_Area2D_body_entered(body):
	if body == Global.Player and x == false:
		Global.epilogo = true
		get_tree().change_scene("res://Scenes/Loadscreen.tscn")
		x = true
