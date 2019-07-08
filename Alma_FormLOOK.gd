#Script de evento onde simplesmente aparece um espirito no teto.
extends Node2D

#Variavel de controle para evitar que o inimigo apareça mais de uma vez no mesmo local.
var active = false

#O espirito é carregado sem textura.
func _ready():
	$Sprite.texture = null

#Area que detecta o player e assim ativa a aparição do espirito.
func _on_Area2D_body_entered(body):
	if body == Global.Player and active == false:
		#Carrega textura do espirito.
		$Sprite.texture = load("res://GFX/PNG/GirlHorror/girlhorror_monster_2.png")
		active = true
		#Tempo em que o espirito fica visivel até desaparecer.
		$Sprite/Timer.start()
		#Som que o espirito emite começa a tocar.
		$Sprite/Teeth.play()
		
#Função que após o desaparecimento do espirito ela libera o espaço na memória.
func _on_Timer_timeout():
	queue_free()
