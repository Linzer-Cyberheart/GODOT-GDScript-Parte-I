#Tela de apresentação do Capitulo Tres.
extends CanvasLayer

#Inicia a animação de apresentação.
func _ready():
	$AnimationPlayer.play("Chap3")

#Ao terminar a animação de apresentação, a fase do Capitlo Tres, chamada de Epilogo é carregada.
func _on_AnimationPlayer_animation_finished(anim_name):
	get_tree().change_scene("res://Scenes/Epilogo.tscn")


