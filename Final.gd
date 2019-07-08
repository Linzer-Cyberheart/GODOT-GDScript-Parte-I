extends Node2D

var x = false

func _ready():
	
	$Paxton_Ending/Place/Area/Fire/Bonfire/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire2/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire3/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire4/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire5/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire6/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire7/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire8/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire9/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire10/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire11/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire12/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire13/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire14/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire15/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire16/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire17/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire18/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire19/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire20/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire21/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire22/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire23/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire24/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire25/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire26/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire27/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire28/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire29/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire30/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire31/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire32/DamageArea/CollisionShape2D.disabled = true
	$Paxton_Ending/Place/Area/Fire/Bonfire33/DamageArea/CollisionShape2D.disabled = true
	
	get_node("Camera").hide()
	get_node("Interface/Black Screen/NinePatchRect").hide()
	
	$Timer_Player.start()
	$Timer_Viviane.start()
	$Timer_Paxton.start()
	
	$Timer_Hide.start()
	$Timer_Hide2.start()
	$Timer_Hide3.start()


func _on_Timer_Player_timeout():
	$Timer_Player.stop()
	get_node("Interface/Black Screen/NinePatchRect").show()


func _on_Timer_Viviane_timeout():
	$Timer_Viviane.stop()
	get_node("Interface/Black Screen/NinePatchRect").show()


func _on_Timer_Paxton_timeout():
	$Timer_Paxton.stop()
	get_node("Interface/Black Screen/NinePatchRect").show()


func _on_Timer_Hide_timeout():
	$Timer_Hide.stop()
	get_node("Interface/Black Screen/NinePatchRect").hide()


func _on_Timer_Hide2_timeout():
	$Timer_Hide2.stop()
	get_node("Interface/Black Screen/NinePatchRect").hide()


func _on_Timer_Hide3_timeout():
	$Timer_Hide3.stop()
	get_node("Interface/Black Screen/NinePatchRect").hide()
	$Game_Ending/Final_POPUP/Popup.show()
	$Game_Ending/Final_POPUP/AnimationPlayer.play("Credits")


func _on_AnimationPlayer_animation_finished(anim_name):
	Global.Zerado = true
	x = Global.Zerado
	get_tree().call_group("interface", "change_bg", x)
	get_tree().change_scene("res://Scenes/Loadscreen.tscn")