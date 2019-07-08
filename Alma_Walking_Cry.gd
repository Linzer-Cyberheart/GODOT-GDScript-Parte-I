extends Node2D

var active = false

func _on_ActiveArea_body_entered(body):
	if body == Global.Player and active == false:
		$AnimationPlayer.play("Walking_Cry")
		active = true

func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
