extends Camera2D

var shake_amount = 6.0
var shake = false
onready var camera = get_node(".")

func _ready():
	$Dust_POPUP/Popup.hide()
	$Shake_START.start()

func _process(delta):
	if shake == true:
		camera.set_offset(Vector2(rand_range(-1.0, 1.0) * shake_amount, rand_range(-1.0, 1.0) * shake_amount))
	if shake == false:
		camera.set_offset(Vector2(0,0))
		
		
func _on_Shake_START_timeout():
	$Dust_POPUP/Popup.show()
	$Effect.play()
	shake = true
	$Shake_START.stop()
	$Shake_STOP.start()

func _on_Shake_STOP_timeout():
	shake = false
	$Dust_POPUP/Popup.hide()
	$Shake_STOP.stop()
	$Shake_START.start()
	
func avalanche(avalanche):
	if avalanche == true:
		zoom = Vector2(1,1)
		$Shake_STOP.stop()
		$Shake_START.stop()
		shake = true
		$Dust_POPUP/Popup.show()
		$Effect.play()