extends Control

func _ready():
	GameAudio.play_levelmap_music()

func _on_summer_pressed():
	get_tree().change_scene("res://scenes/SummerMap.tscn")
	
func _on_winter_pressed():
	get_tree().change_scene("res://scenes/wintermap.tscn")
