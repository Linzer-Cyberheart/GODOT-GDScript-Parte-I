extends CanvasLayer

var pause = false


func skintrue(skin):
	if Global.skin == true:
		$Health_Increase.show()
		$Health_Increase/AnimationPlayer.play("HealthUpdate")
		$SuspicionContainer.texture = load("res://GFX/Interface/PNG/ButtonRed.png")
		$DisguiseContainer.texture = load("res://GFX/Interface/PNG/ButtonRed.png")
		$LootContainer.texture = load("res://GFX/Interface/PNG/ButtonRed.png")


func _input(event):
	if Input.is_action_pressed("ui_pause") and pause == false:
		get_tree().paused = true 
		$Pause_Game/PauseSound.play()
		$Pause_Game.show()
		pause = true


func _on_Quit_pressed():
	get_tree().quit()


func _on_Return_pressed():
	$Pause_Game/PauseSound.play()
	$Pause_Game.hide()
	get_tree().paused = false
	pause = false


func _on_Main_Menu_pressed():
	get_tree().paused = false
	if Global.Zerado == true:
		get_tree().change_scene("res://Scenes/SplashScreen2.tscn")
	get_tree().change_scene("res://Scenes/Levels/SplashScreen.tscn")
	

func _on_Player_health_changed(value):
	$SuspicionContainer/HealthMeter.value = value
	if Global.Player.health >= 0.5 * Global.Player.max_health:
		$Danger.hide()
		$SuspicionContainer/HealthMeter.texture_progress = load("res://GFX/Interface/PNG/greenbar.png")
#		$SuspicionContainer/HealthMeter.texture_under = load("res://GFX/Interface/PNG/whitebar.png")
		$SuspicionContainer/HealthMeter.texture_over = load("res://GFX/Interface/PNG/barborder.png")
		$SuspicionContainer/AnimationPlayer.stop()
	if Global.Player.health < 0.4 * Global.Player.max_health:
		$Danger.show()
		$SuspicionContainer/AnimationPlayer.play("DamagedSlow")
		$SuspicionContainer/HealthMeter.texture_progress = load("res://GFX/Interface/PNG/yellowbar.png")
#		$SuspicionContainer/HealthMeter.texture_under = load("res://GFX/Interface/PNG/whitebar.png")
		$SuspicionContainer/HealthMeter.texture_over = load("res://GFX/Interface/PNG/barborder.png")
	if Global.Player.health <= 0.25 * Global.Player.max_health:
		$Danger.show()
		$SuspicionContainer/AnimationPlayer.play("DamagedFast")
		$SuspicionContainer/HealthMeter.texture_progress = load("res://GFX/Interface/PNG/redbar.png")
#		$SuspicionContainer/HealthMeter.texture_under = load("res://GFX/Interface/PNG/whitebar.png")
		$SuspicionContainer/HealthMeter.texture_over = load("res://GFX/Interface/PNG/barborder.png")

func hited():
	$Hited/Hited.play("Hited")

func _on_AnimationPlayer_animation_finished(anim_name):
	$Health_Increase.hide()
