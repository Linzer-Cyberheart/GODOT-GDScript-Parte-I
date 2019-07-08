extends "res://Scripts/NPC.gd"


onready var parent = get_parent()

export (float) var gun_speed
export (int) var detect_radius

var speed = 0
var target = null

func _ready():
		Global.Enemy = self
		var circle = CircleShape2D.new()
		$DetectRadius/CollisionShape2D.shape = circle
		$DetectRadius/CollisionShape2D.shape.radius = detect_radius
		

func control(delta):
	speed = max_speed
		
	if parent is PathFollow2D:
		parent.set_offset(parent.get_offset() + speed * delta)
		position = Vector2()
	else:
		pass

func _process(delta):
	if target:
		var target_dir = (target.global_position - global_position).normalized()
		var current_dir = Vector2(1,0).rotated($Weapon.global_rotation)
		$Weapon.global_rotation = current_dir.linear_interpolate(target_dir, gun_speed * delta).angle()
		var current_dir2 = Vector2(1,0).rotated($Body.global_rotation)
		$Body.global_rotation = current_dir2.linear_interpolate(target_dir, gun_speed * delta).angle()
		if target_dir.dot(current_dir) > 0.9:
			shoot()


func _on_DetectRadius_body_entered(body):
	if body == Global.Player or body == Global.EnemyZ and dead == false:
		target = body

func _on_DetectRadius_body_exited(body):
	if body == target and dead == false:
		target = null
		
