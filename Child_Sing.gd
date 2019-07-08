extends Node2D

var active = false

func _on_CollisionShape2D_body_entered(body):
	if body == Global.Player and active == false:
		$Child_SFX.play()
		active = true


func _on_Child_SFX_finished():
	queue_free()
