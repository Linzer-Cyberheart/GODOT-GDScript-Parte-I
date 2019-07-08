extends Node2D

var ative = false
var body = Global.Player


func _on_Area2D_body_entered(body):
	if body.has_node("Paxton") and ative == false:
		$TimerGONE.start()
		ative = true
		
		
func _on_TimerGONE_timeout():
	$WallpieceGONE.texture = null
	$WallpieceGONE2.texture = null



