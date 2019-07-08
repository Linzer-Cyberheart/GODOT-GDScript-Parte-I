extends Node2D

var ative = false

func _ready():
	$Fire/Bonfire/DamageArea/CollisionShape2D.disabled = true
	$Fire/Bonfire2/DamageArea/CollisionShape2D.disabled = true
	$Fire/Bonfire3/DamageArea/CollisionShape2D.disabled = true
	$Fire/Bonfire4/DamageArea/CollisionShape2D.disabled = true
	$Fire/Bonfire5/DamageArea/CollisionShape2D.disabled = true
	$Fire/Bonfire6/DamageArea/CollisionShape2D.disabled = true
	$Fire/Bonfire7/DamageArea/CollisionShape2D.disabled = true

func _on_Area2D_body_entered(body):
	if body.has_node("Paxton") and ative == false:
		$Timer.start()
		$FireTimer.start()
		ative = true



func _on_Timer_timeout():
	$Timer.stop()
	$AnimationPlayer.play("2Wallbreaking")


