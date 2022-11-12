extends Node2D


func _ready():
	GameAudio.play_summer_music()
	


func _on_FallZone_body_entered(body):
	if body.name == "Player":
		get_tree().change_scene("res://scenes/game over.tscn")


func _on_pause_child_entered_tree(node):
	GameAudio.reset_volume()
