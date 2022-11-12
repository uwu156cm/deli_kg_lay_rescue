extends CanvasLayer

func _ready():
	$CanvasLayer/TextureRect.visible = false


func _unhandled_key_input(event):
	if event.is_action_pressed("pause"):
		get_tree().paused = true
		$CanvasLayer/TextureRect.visible = true
		
func _on_Resume_pressed():
	get_tree().paused = false
	$CanvasLayer/TextureRect.hide()




func _on_Main_Menu_pressed():
	get_tree().change_scene("res://scenes/main menu.tscn")
	


