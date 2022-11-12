extends CanvasLayer

func _ready():
	GameAudio.play_over()

func _on_Main_Menu_pressed():
	get_tree().change_scene("res://scenes/main menu.tscn")


func _on_Select_Game_pressed():
	get_tree().change_scene("res://scenes/levelmap.tscn")








func _on_Restart_pressed():
	get_tree().change_scene("res://scenes/SummerMap.tscn")
