extends CanvasLayer

var x = false

func _on_Weapon_body_entered(body):
	if body == Global.Player and x == false:
		$GunTakePopUP.show()
		$GunTakePopUP/AnimationPlayer.play("Pop2")
		x = true


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
