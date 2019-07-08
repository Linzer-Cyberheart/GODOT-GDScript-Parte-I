extends Node2D

var x = false

func _ready():
	$Bonfire/Fire_SFX.playing = false
	$Bonfire2/Fire_SFX.playing = false
	$Bonfire4/Fire_SFX.playing = false
	$Bonfire5/Fire_SFX.playing = false
	$Bonfire6/Fire_SFX.playing = false
	$Bonfire7/Fire_SFX.playing = false
	$Bonfire8/Fire_SFX.playing = false
	$Bonfire9/Fire_SFX.playing = false
	$Bonfire10/Fire_SFX.playing = false
	$Bonfire11/Fire_SFX.playing = false
	$Bonfire12/Fire_SFX.playing = false
	$Bonfire13/Fire_SFX.playing = false
	$Bonfire14/Fire_SFX.playing = false
	$Bonfire15/Fire_SFX.playing = false
	$Bonfire16/Fire_SFX.playing = false
	$Bonfire17/Fire_SFX.playing = false
	$Bonfire18/Fire_SFX.playing = false
	$Bonfire20/Fire_SFX.playing = false
	$Bonfire21/Fire_SFX.playing = false
	$Bonfire22/Fire_SFX.playing = false
	
	$Bonfire/DamageArea/CollisionShape2D.disabled = true
	$Bonfire2/DamageArea/CollisionShape2D.disabled = true
	$Bonfire4/DamageArea/CollisionShape2D.disabled = true
	$Bonfire5/DamageArea/CollisionShape2D.disabled = true
	$Bonfire6/DamageArea/CollisionShape2D.disabled = true
	$Bonfire7/DamageArea/CollisionShape2D.disabled = true
	$Bonfire8/DamageArea/CollisionShape2D.disabled = true
	$Bonfire9/DamageArea/CollisionShape2D.disabled = true
	$Bonfire10/DamageArea/CollisionShape2D.disabled = true
	$Bonfire11/DamageArea/CollisionShape2D.disabled = true
	$Bonfire12/DamageArea/CollisionShape2D.disabled = true
	$Bonfire13/DamageArea/CollisionShape2D.disabled = true
	$Bonfire14/DamageArea/CollisionShape2D.disabled = true
	$Bonfire15/DamageArea/CollisionShape2D.disabled = true
	$Bonfire16/DamageArea/CollisionShape2D.disabled = true
	$Bonfire17/DamageArea/CollisionShape2D.disabled = true
	$Bonfire18/DamageArea/CollisionShape2D.disabled = true
	$Bonfire20/DamageArea/CollisionShape2D.disabled = true
	$Bonfire21/DamageArea/CollisionShape2D.disabled = true
	$Bonfire22/DamageArea/CollisionShape2D.disabled = true

func _on_Weapon_body_entered(body):
	if body == Global.Player and x == false:
		$AnimationPlayer.play("FireStarter")
		$Bonfire/Fire_SFX.playing = true
		$Bonfire2/Fire_SFX.playing = true
		$Bonfire4/Fire_SFX.playing = true
		$Bonfire5/Fire_SFX.playing = true
		$Bonfire6/Fire_SFX.playing = true
		$Bonfire7/Fire_SFX.playing = true
		$Bonfire8/Fire_SFX.playing = true
		$Bonfire9/Fire_SFX.playing = true
		$Bonfire11/Fire_SFX.playing = true
		$Bonfire12/Fire_SFX.playing = true
		$Bonfire13/Fire_SFX.playing = true
		$Bonfire14/Fire_SFX.playing = true
		$Bonfire15/Fire_SFX.playing = true
		$Bonfire16/Fire_SFX.playing = true
		$Bonfire17/Fire_SFX.playing = true
		$Bonfire18/Fire_SFX.playing = true
		$Bonfire20/Fire_SFX.playing = true
		$Bonfire21/Fire_SFX.playing = true
		$Bonfire22/Fire_SFX.playing = true
		x = true

func _on_AnimationPlayer_animation_finished(anim_name):
	var damage = 30
	if Global.Player.has_method("take_damage"):
		Global.Player.take_damage(damage)
	queue_free()