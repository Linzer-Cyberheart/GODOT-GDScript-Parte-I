extends Node2D

var x = false
var y = false

func _ready():
	get_node(".").hide()
	$Heli/Heli_SFX.playing = false
	$StaticBody2D/CollisionPolygon2D.disabled = true
	$DetectArea/CollisionShape2D.disabled = true

func avalanche(avalanche):
	if avalanche == false:
		get_node(".").hide()
		$Heli/Heli_SFX.playing = false
		$StaticBody2D/CollisionPolygon2D.disabled = true
		$DetectArea/CollisionShape2D.disabled = true
	if avalanche == true:
		get_node(".").show()
		$Heli/Heli_SFX.playing = true
		$StaticBody2D/CollisionPolygon2D.disabled = false
		$DetectArea/CollisionShape2D.disabled = false
		
func _on_DetectArea_body_entered(body):
	if body == Global.Player and x == false:
		Global.Player.hide()
		$AnimationPlayer.play("Surviving")
		Global.Zerado = true
		x = true

func _on_AnimationPlayer_animation_finished(anim_name):
	Global.final = true
	Global.Zerado = true
	get_tree().change_scene("res://Scenes/Loadscreen.tscn")
