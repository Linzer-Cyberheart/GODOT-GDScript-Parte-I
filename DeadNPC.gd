extends Node2D

var i = true

func _ready():
		$Sprite/Particles/Particles2D.emitting = false
		$Sprite/Particles/Particles2D2.emitting = false
		$Sprite/Particles/Particles2D3.emitting = false
		$Sprite/Particles/Particles2D4.emitting = false
		$Sprite/Particles/Particles2D5.emitting = false
		$Sprite/Particles/Particles2D6.emitting = false
		$Sprite/Particles/Particles2D7.emitting = false
		$Sprite/Particles/Particles2D8.emitting = false


func _on_Area2D_body_entered(body):
	if body == Global.Player and i == true:
		$Paxton.play()


func _on_Area2D_body_exited(body):
	if body == Global.Player:
		i = false



func _on_Paxton_finished():
	$Cry.play()


func _on_Cry_finished():
	$Girl.play()
	$Sprite/Particles/Particles2D.emitting = true
	$Sprite/Particles/Particles2D2.emitting = true
	$Sprite/Particles/Particles2D3.emitting = true
	$Sprite/Particles/Particles2D4.emitting = true
	$Sprite/Particles/Particles2D5.emitting = true
	$Sprite/Particles/Particles2D6.emitting = true
	$Sprite/Particles/Particles2D7.emitting = true
	$Sprite/Particles/Particles2D8.emitting = true
