extends KinematicBody2D

onready var parent = get_parent()

signal health_changed

export (int) var max_speed
export (float) var rotation_speed
export (int) var max_health

var velocity = Vector2()
var alive = true
var health

var speed = 0
var damage = 50

func _ready():
	Global.EnemyZ = self
	$Hited_SFX.play()
#	$Hited1.hide()
#	$Hited2.hide()
	health = max_health
	emit_signal("health_changed", health * 100/max_health)
	
func control(delta):
	speed = max_speed
		
	if parent is PathFollow2D:
		parent.set_offset(parent.get_offset() + speed * delta)
		position = Vector2()
	else:
		pass

func _physics_process(delta):
	if not alive:
		return
	control(delta)
	move_and_slide(velocity)
	
func take_damage(amount):
	health -= amount
	$Hit_Timer.start()
#	$Hited1.show()
#	$Hited2.show()
	emit_signal("health_changed", health * 100/max_health)
	if health <= 0:
		$DamageArea/CollisionShape2D.disabled = true
		$CollisionShape2D.disabled = true
		explode()
		
var dead = false
var result = []
func explode():
	queue_free()
	dead = true
	max_speed = 0
	$Hit_Timer.stop()
	$UnitDisplayG/HealthMeter.hide()
#	$Dead/AnimationPlayer.play("Dead")

func _on_DamageArea_body_entered(body):
	if body.has_method("take_damage") and not Global.EnemyZ:
		$DamageArea/Timer.start()
		body.take_damage(damage)
	if body == Global.Player:
		$DamageArea/Timer.start()
		body.take_damage(damage)
	if body == Global.Enemy:
		$DamageArea/Timer.start()
		body.take_damage(damage)


func _on_Timer_timeout():
	$DamageArea/CollisionShape2D.disabled = true
	$DamageArea/Timer2.start()


func _on_Timer2_timeout():
	$DamageArea/CollisionShape2D.disabled = false


#func _on_Hit_Timer_timeout():
#	$Hited1.hide()
#	$Hited2.hide()