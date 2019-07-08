extends Node2D


func _on_AnimationPlayer_animation_finished(anim_name):
	Global.level3 = true
	get_tree().change_scene("res://Scenes/Loadscreen.tscn")