extends Area2D

export (int) var speed
export (int) var damage
export (float) var lifetime

var velocity = Vector2()

func _ready():
	Global.bullet = self

func start(_position, _direction):
	position = _position
	rotation = _direction.angle()
	$LifeTime.wait_time = lifetime
	velocity = _direction * speed

func _process(delta):
	position += velocity * delta
	
func explode():
	velocity = Vector2()
	$Sprite.hide()
	$Explosion/Particles2D.show()
	$Explosion.show()
	$Explosion.play("smoke")

func _on_Bullet_body_entered(body):
	var r1 = true
	explode()
	if body.has_method("take_damage"):
		body.take_damage(damage)
		$Damage.play()
	else:
		if body.has_method("parry"):
			$Parry.play()
			explode()
		if r1 == true:
			$Ricochet.play()
			r1 = false
		if r1 == false:
			$Ricochet2.play()
			r1 = true


func _on_LifeTime_timeout():
	explode()


func _on_EnemyBullet_body_entered(body):
	var r1 = true
	explode()
	if body.has_method("take_damage"):
		body.take_damage(damage)
		$Damage.play()
	else:
		if body.has_method("parry"):
			$Parry.play()
		if r1 == true:
			$Ricochet.play()
			r1 = false
		if r1 == false:
			$Ricochet2.play()


func _on_Explosion_animation_finished():
	queue_free()
