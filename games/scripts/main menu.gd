extends Control

func _ready():
	GameAudio.play_story_music()

func _on_Play_Button_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")

func _on_Story_Button_pressed():
	get_tree().change_scene("res://scenes/story1.tscn")


func _on_Setting_Button_pressed():
		get_tree().change_scene("res://scenes/game_audio.tscn")
