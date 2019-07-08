#Script que faz com que apareça rochas no caminho e inicia uma avalanche na ultima fase(Capitulo Tres - Epilogo)
extends Node2D

#Variavel de controle para evitar que a avalanche apareça mais de uma vez no mesmo local.
var x = false

#Dano causado pela avalanche.
var damage = 200

#Variavel booleana que indica se a avalanche foi ativada ou não.
var avalanche = false

#Função que deixa as rochas escondidas até que a avalanche aconteça.
func _ready():
	#Desabilita a parede invisivel que bloqueara o jogador ao iniciar a avalanche.
	$Wall/CollisionShape2D.disabled = true
	
	#Escondendo as rochas.
	get_node("Objects/RockA").hide()
	get_node("Objects/RockB").hide()
	get_node("Objects/RockC").hide()
	
	#Desabilitando colisão das rochas A:
	$Objects/RockA/RockA1/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA2/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA3/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA4/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA5/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA6/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA7/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA8/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA9/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA10/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA11/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA12/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA13/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA14/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA15/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA16/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA17/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockA/RockA18/StaticBody2D/CollisionPolygon2D.disabled = true
	
	#Desabilitando colisão das rochas B:
	$Objects/RockB/RockB1/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB2/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB3/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB4/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB5/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB6/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB7/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB8/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB9/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB10/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB11/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB12/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB13/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB14/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB15/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB16/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB17/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB18/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB19/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB20/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB21/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB22/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockB/RockB23/StaticBody2D/CollisionPolygon2D.disabled = true
	
	#Desabilitando colisão das rochas C:
	$Objects/RockC/RockC1/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC2/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC3/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC4/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC5/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC7/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC8/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC9/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC10/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC11/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC12/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC13/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC14/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC15/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC16/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC17/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC18/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC19/StaticBody2D/CollisionPolygon2D.disabled = true
	$Objects/RockC/RockC20/StaticBody2D/CollisionPolygon2D.disabled = true

#Função que detecta o jogador e inicia a animação de confronto.
func _on_DetectionArea_body_entered(body):
	if body == Global.Player and x == false:
		#Dá inicio a animação.
		$AnimationPlayer.play("Alma's End")
		#Tempo de duração da animação, assim em seguida é ativada a avalanche.
		$Timers/Alma/Alma_Timer.start()
		#Habilita a colisão da parede invisivel, bloqueando o jogador de ir embora antes que a avalanche aconteça.
		$Wall/CollisionShape2D.disabled = false
		x = true

#Função que causa dano ao jogador se pego pela avalanche.
func _on_Damage_Area_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)

#Indica que a animação de confronto acabou e que a animação da avalanche pode iniciar e as rochas podem aparecer.
func _on_Alma_Timer_timeout():
	$Timers/Alma/Alma_Timer.stop()
	avalanche = true
	
	#Mostrando as rochas
	get_node("Objects/RockA").show()
	get_node("Objects/RockB").show()
	get_node("Objects/RockC").show()
	
	#Habilitando colisão das rochas A:
	$Objects/RockA/RockA1/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA2/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA3/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA4/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA5/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA6/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA7/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA8/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA9/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA10/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA11/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA12/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA13/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA14/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA15/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA16/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA17/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockA/RockA18/StaticBody2D/CollisionPolygon2D.disabled = false
	
	#Habilitando colisão das rochas B:
	$Objects/RockB/RockB1/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB2/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB3/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB4/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB5/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB6/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB7/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB8/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB9/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB10/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB11/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB12/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB13/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB14/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB15/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB16/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB17/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB18/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB19/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB20/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB21/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB22/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockB/RockB23/StaticBody2D/CollisionPolygon2D.disabled = false
	
	#Habilitando colisão das rochas C:
	$Objects/RockC/RockC1/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC2/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC3/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC4/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC5/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC7/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC8/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC9/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC10/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC11/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC12/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC13/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC14/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC15/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC16/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC17/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC18/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC19/StaticBody2D/CollisionPolygon2D.disabled = false
	$Objects/RockC/RockC20/StaticBody2D/CollisionPolygon2D.disabled = false
	
	#Inicia a animação da avalanche.
	$AnimationPlayer.play("End_Game")
	#Desabilita a colisão da parede inivisão, assim o jogador pode fugir.
	$Wall/CollisionShape2D.disabled = true
	#Manda o valor da variavel avalanche(no caso True) para os scripts no grupo interface que tenham a função avalanche.
	get_tree().call_group("interface", "avalanche", avalanche)
