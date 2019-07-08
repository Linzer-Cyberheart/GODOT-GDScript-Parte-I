extends Node2D

var x = false
var damage = 50

func _on_DetectArea_body_entered(body):
	if body == Global.Player and x == false:
		$AnimationPlayer.play("Blue_Throw")
		x = true


func _on_DamageArea_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)
