extends KinematicBody2D

func _ready():
	$Timer.stop()



func _on_Area2D_body_entered(body):
	if body.name == "Player":
		GameSfx.play_yay()
		$A2D/CollisionShape2D/yay.visible = true
		$Timer.start()
			
	if not body.name == "Player": 
		$A2D/CollisionShape2D/yay.visible = false


func _on_Timer_timeout():
	get_tree().change_scene("res://scenes/game win.tscn")
