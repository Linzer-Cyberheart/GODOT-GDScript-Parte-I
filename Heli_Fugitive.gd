extends Node2D


var x = false

func _ready():
	get_node(".").hide()
	$Chaser/Heli/Heli_SFX.playing = false
	$Chaser2/Heli/Heli_SFX.playing = false
	$Chaser3/Heli/Heli_SFX.playing = false
	$Chaser4/Heli/Heli_SFX.playing = false
	$Chaser5/Heli/Heli_SFX.playing = false


func _on_Area2D_body_entered(body):
	if body == Global.Player and x == false:
		get_node(".").show()
		$Chaser/Heli/Heli_SFX.playing = true
		$Chaser2/Heli/Heli_SFX.playing = true
		$Chaser3/Heli/Heli_SFX.playing = true
		$Chaser4/Heli/Heli_SFX.playing = true
		$Chaser5/Heli/Heli_SFX.playing = true
		$AnimationPlayer.play("Chasers")
		x = true


func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
