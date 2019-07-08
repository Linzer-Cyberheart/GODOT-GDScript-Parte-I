extends KinematicBody2D

signal health_changed

export (int) var max_speed
export (float) var rotation_speed
export (int) var max_health

var velocity = Vector2()
var alive = true
var health

var speed = 0
var damage = 50

var motion = Vector2()
var possible_destinations = []
var path = []
var destination = Vector2()


export var walk_slowdown = 0.5
export var nav_stop_threshold = 5


onready var navigation = Global.navigationz
onready var available_destinations = Global.destinationsz


func _ready():
	possible_destinations = available_destinations.get_children()
	make_path()

	Global.EnemyZ = self
	$Hited_SFX.play()
	$Hited1.hide()
	$Hited2.hide()
	health = max_health
	emit_signal("health_changed", health * 100/max_health)



func _process(delta):
	navigate()

func _physics_process(delta):
	if not alive:
		return
#	control(delta)
	move_and_slide(velocity)

func navigate():
	var distance_to_destination = position.distance_to(path[0])
	destination = path[0]

	if distance_to_destination > nav_stop_threshold:
		move()
	else:
		update_path()


func move():
	speed = max_speed
	look_at(destination)
	motion = (destination-position).normalized() * (max_speed * walk_slowdown)

	if is_on_wall():
		make_path()

	move_and_slide(motion)


func make_path():
	randomize()
	var next_destination = possible_destinations[randi() % possible_destinations.size()]

	path = navigation.get_simple_path(global_position, next_destination.global_position, false)


func update_path():
	if path.size() == 1:
		if $Timer1.is_stopped():
			$Timer1.start()
	else:
		path.remove(0)


func _on_Timer1_timeout():
	make_path()

func take_damage(amount):
	health -= amount
	$Hit_Timer.start()
	$Hited1.show()
	$Hited2.show()
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
		$AnimatedSprite/Damage.play()
	if body == Global.Player:
		$DamageArea/Timer.start()
		body.take_damage(damage)
		$AnimatedSprite/Damage.play()
	if body == Global.Enemy:
		$DamageArea/Timer.start()
		body.take_damage(damage)
		$AnimatedSprite/Damage.play()


func _on_Timer_timeout():
	$DamageArea/CollisionShape2D.disabled = true
	$DamageArea/Timer2.start()


func _on_Timer2_timeout():
	$DamageArea/CollisionShape2D.disabled = false


func _on_Hit_Timer_timeout():
	$Hited1.hide()
	$Hited2.hide()
