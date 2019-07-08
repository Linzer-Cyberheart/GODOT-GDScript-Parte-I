extends Node2D

func _on_Area2D_area_exited(area):
	$World/Roof/Roof17.load(null)
