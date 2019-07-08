extends ColorRect

func _on_Area2D_body_entered(body):
	if Global.suitcase == 5 and Global.recorder == 7 and Global.files == 8:
		Global.prologo = true
		get_tree().change_scene("res://Scenes/Loadscreen.tscn")