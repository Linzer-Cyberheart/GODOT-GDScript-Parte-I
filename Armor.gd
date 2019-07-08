extends Area2D



func _on_Armor_body_entered(body):
	Global.Player.collect_armor()
	queue_free()
