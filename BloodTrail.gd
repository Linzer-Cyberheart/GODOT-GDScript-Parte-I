#Script que faz com que o jogador possa ver pegadas de sangue, elas servem como um GUIA para locais importantes.
extends Node2D

#Variavel de controle para não ser ativada mais de uma vez a pegada de sangue.
var z = false

#Função que detecta se o player passou pela pegada, se sim, a pegada de sangue perde o efeito, assim o jogador sabe
#que já passou por aquele local.
func _on_Detect_body_entered(body):
	if body == Global.Player and z == true:
		#Som ao passar por cima da pegada de sangue,
		$Step/Effect_SFX.play()
		#Tempo em que o som ficará sendo reproduzido inicia.
		$Step/Effect_Timer.start()
		#Colisão é ativada visto que o Night Vision esta ligado, assim o jogador interage com a pegada.
		$Step/Detect/CollisionShape2D.disabled = true
		#As particulas(Efeito das pegadas) param de ser emitidas ao entrar em contato com o jogador.
		$Step/Particles2D.emitting = false

#Quando o tempo do som da pegada acaba, por consequencia o som não será mais reproduzido.
func _on_Effect_Timer_timeout():
	$Step/Effect_Timer.stop()
	$Step/Effect_SFX.stop()

#O jogador só consegue interagir com as pegadas de sangue se o Night Vision estiver ligado, esta função verifica isto.
func nv_on(nv):
	#Se o valor da variavel nv for verdadeiro, o jogador esta com Night Vision.
	if nv == true:
		z = true
	# Se o valor da variavel nv for falso, o jogador não esta com Night Vision.
	if nv == false:
		z = false