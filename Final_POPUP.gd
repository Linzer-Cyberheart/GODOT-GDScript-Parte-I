extends CanvasLayer

var x = false

func _ready():
	Global.Zerado = true
	x = Global.Zerado
	get_tree().call_group("interface", "change_bg", x)
	