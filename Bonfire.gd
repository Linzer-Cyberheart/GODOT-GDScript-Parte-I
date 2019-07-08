#Scrip do fogo, não é um inimigo porém ao entrar em contato com o jogador causa dano.
extends Node2D

#Quantidade do dano causado ao jogador.
var damage = 10

#Função que detecta se o jogador encostou no fogo, se sim, será causado dano ao mesmo.
func _on_DamageArea_body_entered(body):
	if body.has_method("take_damage"):
		body.take_damage(damage)
