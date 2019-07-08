extends CanvasLayer

func _ready():
	$AnimationPlayer.play("Chap2")

func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://Scenes/Levels/Level3.tscn")
