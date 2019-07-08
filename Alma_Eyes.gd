#Script da Alma(Inimigo) o qual aparece e causa dano com a visão.
extends Node2D

#Variavel de controle para evitar que o inimigo apareça mais de uma vez no mesmo local.
var active = false

#Quantidade de dano causado ao player ao ser detectado por este inimigo.
var damage = 5

#Função que detecta se o jogador entrou na área de ativação do Inimigo, se sim, a animação é carregada e ele aparece.
func _on_Area2D_body_entered(body):
	if body == Global.Player and active == false:
		#Inicia a animção do inimigo.
		$AnimationPlayer.play("Looking")
		active = true

#Primeira Area(Olho esquerdo do inimigo) que causa dano ao jogador se o mesmo estiver em contato a ela.
func _on_DamageArea1_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)

#Segunda Area(Olho direito do inimigo) que causa dano ao jogador se o mesmo estiver em contato a ela.
func _on_DamageArea2_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)

#Função que após o desaparecimento do inimigo ela libera o espaço na memória.
func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()