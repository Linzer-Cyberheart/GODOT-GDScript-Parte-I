extends CanvasLayer

func _ready():
	$AnimationPlayer.play("Chap1")

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://Scenes/Welcome.tscn")
