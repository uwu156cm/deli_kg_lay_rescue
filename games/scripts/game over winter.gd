extends CanvasLayer

func _ready():
	GameAudio.play_over()

func _on_replay_pressed():
	get_tree().change_scene("res://scenes/wintermap.tscn")




func _on_select_game_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")


func _on_main_menu_pressed():
	get_tree().change_scene("res://scenes/main menu.tscn")
