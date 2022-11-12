extends TextureRect


var sentence ="June july mhr ywar dk moe phwal lay myr ma sel tha lo mg yk a chit doh a myl shi ma lr... Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed pellentesque risus vel dui placerat lacinia. Nunc tellus metus, condimentum ex."
var sen_index = 0


func _ready():
	GameAudio.play_story_music()

func _on_Timer_timeout():
	if sen_index< sentence.length():
		$textbox/dialogue.append_bbcode(sentence[sen_index])
		sen_index+=1


func _on_next_pressed():
	get_tree().change_scene("res://scenes/story2.tscn")
