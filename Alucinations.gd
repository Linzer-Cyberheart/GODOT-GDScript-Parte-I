extends Node2D

var a = false
var b = false
var c = false
var d = false
var e = false
var f = false

func _ready():
	$Paxton_Death.hide()
	$Research.hide()
	$Testing.hide()
	$Mass.hide()
	$The_Cage.hide()

func _on_Paxton_body_entered(body):
	if body == Global.Player and a == false:
		$Paxton_Death.show()
		$Paxton_Death/AnimationPlayer.play("Killing")
		a = true


func _on_Researching_body_entered(body):
	if body == Global.Player and b == false:
		$Research.show()
		$Research/AnimationPlayer.play("Research")
		b = true


func _on_Tests_body_entered(body):
	if body == Global.Player and c == false:
		$Testing.show()
		$Testing/AnimationPlayer.play("Cage")
		c = true


func _on_Bloody_body_entered(body):
	if body == Global.Player and d == false:
		$Mass.show()
		$Mass/AnimationPlayer.play("Mass")
		d = true


func _on_Reborned_body_entered(body):
	if body == Global.Player and e == false:
		$Reborn.show()
		$Reborn/AnimationPlayer.play("Reborn")
		e = true


func _on_Cage_body_entered(body):
	if body == Global.Player and f == false:
		$The_Cage.show()
		$The_Cage/NPCs/Alma_Music_Box/Music_SFX.play()
		f = true
