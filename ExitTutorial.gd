extends ColorRect

func _on_Area2D_body_entered(body):
	if body.has_node("Suitcase") and body.has_node("Files") and body.has_node("Recorder"):
		if Global.suitcase == 1 and Global.recorder == 1 and Global.files == 1:
			get_tree().change_scene("res://Scenes/TutorialOver.tscn")

