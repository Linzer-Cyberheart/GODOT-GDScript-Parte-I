#Script que causa um evento como um pequeno boss para o jogador.
extends Node2D

#Variavel de controle para evitar que o inimigo apareça mais de uma vez no mesmo local.
var active = false

#Função que detecta o jogador e assim inicia a animação que faz o inimigo aparecer.
func _on_Area2D_body_entered(body):
	if body == Global.Player and active == false:
		$AnimationPlayer.play("Alma's Dream")
		active = true

#Quando a animação do inimigo acaba, esta função libera o espaço na memória que antes estava ocupado.
func _on_AnimationPlayer_animation_finished(anim_name):
	queue_free()
