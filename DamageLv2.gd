extends Area2D

var damage = 180
var x = false

func _on_DamageLv2_body_entered(body):
	if body.has_method("take_damage") and x == false:
		body.take_damage(damage)
		x = true
		queue_free()
