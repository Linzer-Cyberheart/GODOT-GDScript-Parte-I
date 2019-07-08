extends Node2D

var text
var x = 0

func _ready():
	$Timer.start()
	$Timer2.start()
	text = get_json()
	update_message(x)
	$ContactLevel2/Popup.show()


func get_json():
	var file = File.new()
	file.open(Global.ContactLevel2, file.READ)
	var content = file.get_as_text()
	file.close()
	return parse_json(content)
	

func update_message(number):
	$ContactLevel2/AnimationPlayer.play("Transition")
	$ContactLevel2/Popup/NinePatchRect/Label.text = text[str(number)]
	
func _on_Timer_timeout():
	if x <= 5:
		x = x + 1
		update_message(x)
	elif x == 5:
		pass

func _on_Timer2_timeout():
	queue_free()
