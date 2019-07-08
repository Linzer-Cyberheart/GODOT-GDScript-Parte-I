extends Node2D

var x = false
var y = false
var z = false
var j = false
var zoom_out = false


func _ready():
	Global.level1a = false
	Global.level2a = false
	Global.level3a = false
	Global.epilogoa = true
	
	x = Global.level1a
	y = Global.level2a
	z = Global.level3a
	j = Global.epilogoa
	
	get_tree().call_group("interface", "level", x, y, z, j)

func _on_Human_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)
	$Sounds/Shoot_SFX.play()

func _on_Heli_shoot(bullet, _position, _direction):
	var b = bullet.instance()
	add_child(b)
	b.start(_position, _direction)
	$Sounds/Shoot2_SFX.play()

var clear = false
func _on_Clear_Epilogo_body_entered(body):
	if body == Global.Player and clear == false:
		get_node("Enemys").queue_free()
		get_node("Ghosts").queue_free()
		get_node("HuntersZ").queue_free()
		$World/Others/Doors/Real/Door20.queue_free()
		$World/Others/Doors/Real/Door5.queue_free()
		clear = true