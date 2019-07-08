extends Area2D

var x = false

func _on_AmbushZ_body_entered(body):
	if body == Global.Player and x == false:
		$AnimationPlayer.play("Ambush")
		x = true
