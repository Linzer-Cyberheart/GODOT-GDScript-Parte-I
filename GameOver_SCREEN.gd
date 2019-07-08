extends CanvasLayer



func _on_Restart_pressed():
	Global.gameover = true
	get_tree().change_scene("res://Scenes/Loadscreen.tscn")


func _on_Quit_pressed():
	get_tree().quit()


func _on_Try_Again_pressed():
	if Global.level1a == true:
		get_tree().change_scene("res://Scenes/Levels/Level1.tscn")
		
	if Global.level3a == true:
		get_tree().change_scene("res://Scenes/Levels/Level3.tscn")
		
	if Global.epilogoa == true:
		get_tree().change_scene("res://Scenes/Epilogo.tscn")