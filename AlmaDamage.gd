extends Node2D

var x = false

func _on_AnimationPlayer_animation_started(anim_name):
	$Damage1.start()
	$Damage2.start()
	$Damage3.start()
	$Damage4.start()


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()


func _on_Damage1_timeout():
	var damage = 25
	if Global.Player.has_method("take_damage"):
		Global.Player.take_damage(damage)


func _on_Damage2_timeout():
	var damage = 25
	if Global.Player.has_method("take_damage"):
		Global.Player.take_damage(damage)


func _on_Damage3_timeout():
	var damage = 35
	if Global.Player.has_method("take_damage"):
		Global.Player.take_damage(damage)


func _on_Damage4_timeout():
	var damage = 35
	if Global.Player.has_method("take_damage"):
		Global.Player.take_damage(damage)


func _on_DetectArea_body_entered(body):
	if body == Global.Player and x == false:
		$AnimationPlayer.play("Taken")
		x = true
