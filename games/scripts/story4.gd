extends Control


var sentence ="wow fantastic baby Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque risus vel dui placerat lacinia. Nunc tellus metus, condimentum ex."
var sen_index = 0



func _on_Timer_timeout():
	if sen_index< sentence.length():
		$bg/textbox/dialogue.append_bbcode(sentence[sen_index])
		sen_index+=1


func _on_previous_pressed():
	get_tree().change_scene("res://scenes/story3.tscn")

