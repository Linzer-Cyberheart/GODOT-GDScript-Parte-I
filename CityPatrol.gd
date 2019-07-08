extends Node2D

var active = false

func _ready():
	get_node(".").hide()
	
	#Cars
	get_node("Cars/Patrol_Car/Engine").stop()
	get_node("Cars/Patrol_Car/StaticBody2D/CollisionPolygon2D").disabled = true
	get_node("Cars/Patrol_Car/Detectors").scale.x = 0.0001
	get_node("Cars/Patrol_Car/Detectors").scale.y = 0.0001
	
	get_node("Cars/Patrol_Car2/Engine").stop()
	get_node("Cars/Patrol_Car2/StaticBody2D/CollisionPolygon2D").disabled = true
	get_node("Cars/Patrol_Car2/Detectors").scale.x = 0.0001
	get_node("Cars/Patrol_Car2/Detectors").scale.y = 0.0001
	
	get_node("Cars/Patrol_Car3/Engine").stop()
	get_node("Cars/Patrol_Car3/StaticBody2D/CollisionPolygon2D").disabled = true
	get_node("Cars/Patrol_Car3/Detectors").scale.x = 0.0001
	get_node("Cars/Patrol_Car3/Detectors").scale.y = 0.0001
	
	
	#Operators
	get_node("Operators/Operators/Torch").enabled = false
	get_node("Operators/Operators/CollisionShape2D").disabled = true
	get_node("Operators/Operators/Sprite").texture = null
	
	get_node("Operators/Operators2/Torch").enabled = false
	get_node("Operators/Operators2/CollisionShape2D").disabled = true
	get_node("Operators/Operators2/Sprite").texture = null
	
	get_node("Operators/Operators3/Torch").enabled = false
	get_node("Operators/Operators3/CollisionShape2D").disabled = true
	get_node("Operators/Operators3/Sprite").texture = null
	
	get_node("Operators/Operators4/Torch").enabled = false
	get_node("Operators/Operators4/CollisionShape2D").disabled = true
	get_node("Operators/Operators4/Sprite").texture = null
	
	get_node("Operators/Operators5/Torch").enabled = false
	get_node("Operators/Operators5/CollisionShape2D").disabled = true
	get_node("Operators/Operators5/Sprite").texture = null
	
	get_node("Operators/Operators6/Torch").enabled = false
	get_node("Operators/Operators6/CollisionShape2D").disabled = true
	get_node("Operators/Operators6/Sprite").texture = null
	
	get_node("Operators/Operators7/Torch").enabled = false
	get_node("Operators/Operators7/CollisionShape2D").disabled = true
	get_node("Operators/Operators7/Sprite").texture = null
	
	get_node("Operators/Operators8/Torch").enabled = false
	get_node("Operators/Operators8/CollisionShape2D").disabled = true
	get_node("Operators/Operators8/Sprite").texture = null
	
	get_node("Operators/Operators9/Torch").enabled = false
	get_node("Operators/Operators9/CollisionShape2D").disabled = true
	get_node("Operators/Operators9/Sprite").texture = null
	
	get_node("Operators/Operators10/Torch").enabled = false
	get_node("Operators/Operators10/CollisionShape2D").disabled = true
	get_node("Operators/Operators10/Sprite").texture = null

func _on_Area2D_body_entered(body):
	if body == Global.Player and active == false:
		Global.patrol = true
		active = true
		get_node(".").show()
		
		#Cars
		get_node("Cars/Patrol_Car/Engine").play()
		get_node("Cars/Patrol_Car/StaticBody2D/CollisionPolygon2D").disabled = false
		get_node("Cars/Patrol_Car/Detectors").scale.x = 1
		get_node("Cars/Patrol_Car/Detectors").scale.y = 1
		
		get_node(".").show()
		get_node("Cars/Patrol_Car2/Engine").play()
		get_node("Cars/Patrol_Car2/StaticBody2D/CollisionPolygon2D").disabled = false
		get_node("Cars/Patrol_Car2/Detectors").scale.x = 1
		get_node("Cars/Patrol_Car2/Detectors").scale.y = 1
		
		get_node(".").show()
		get_node("Cars/Patrol_Car3/Engine").play()
		get_node("Cars/Patrol_Car3/StaticBody2D/CollisionPolygon2D").disabled = false
		get_node("Cars/Patrol_Car3/Detectors").scale.x = 1
		get_node("Cars/Patrol_Car3/Detectors").scale.y = 1
		
		#Operators
		get_node("Operators/Operators/Torch").enabled = true
		get_node("Operators/Operators/CollisionShape2D").disabled = false
		get_node("Operators/Operators/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators2/Torch").enabled = true
		get_node("Operators/Operators2/CollisionShape2D").disabled = false
		get_node("Operators/Operators2/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators3/Torch").enabled = true
		get_node("Operators/Operators3/CollisionShape2D").disabled = false
		get_node("Operators/Operators3/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators4/Torch").enabled = true
		get_node("Operators/Operators4/CollisionShape2D").disabled = false
		get_node("Operators/Operators4/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators5/Torch").enabled = true
		get_node("Operators/Operators5/CollisionShape2D").disabled = false
		get_node("Operators/Operators5/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators6/Torch").enabled = true
		get_node("Operators/Operators6/CollisionShape2D").disabled = false
		get_node("Operators/Operators6/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators7/Torch").enabled = true
		get_node("Operators/Operators7/CollisionShape2D").disabled = false
		get_node("Operators/Operators7/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators8/Torch").enabled = true
		get_node("Operators/Operators8/CollisionShape2D").disabled = false
		get_node("Operators/Operators8/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators9/Torch").enabled = true
		get_node("Operators/Operators9/CollisionShape2D").disabled = false
		get_node("Operators/Operators9/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		get_node("Operators/Operators10/Torch").enabled = true
		get_node("Operators/Operators10/CollisionShape2D").disabled = false
		get_node("Operators/Operators10/Sprite").texture = load("res://GFX/PNG/Hitman 1/hitman1_stand.png")
		
		$Car_Patrol.play("Car_Patrol")
		$Trops_Come.play()
		$Car_Tire.play()
		$Siren.play()

var enter = false

func _on_PatrolStop_body_entered(body):
	if body == Global.Player and enter == false and Global.patrol == true:
		$Trops_Come.stop()
		enter == true

func _on_PatrolStop2_body_entered(body):
	if body == Global.Player and enter == false and Global.patrol == true:
		$Trops_Come.stop()
		enter == true

var entered = false

func _on_MusicStart_body_entered(body):
	if body == Global.Player and entered == false and Global.patrol == true:
		$Trops_Come.play()
		entered == true
