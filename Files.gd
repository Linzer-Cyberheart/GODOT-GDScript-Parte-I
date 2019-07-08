extends Area2D


func _on_Files_body_entered(body):
	Global.Player.collect_files()
	queue_free()
