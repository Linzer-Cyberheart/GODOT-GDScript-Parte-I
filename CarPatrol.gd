extends Node2D

var damage = 50

func _on_DamageArea_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)