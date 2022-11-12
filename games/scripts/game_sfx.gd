extends Control

var yay = load("res://audios/Kids Cheering- Sound Effect.mp3")
var enemy_dead = load ("res://audios/Rustling - Sound Effect.mp3")
var enemy_attack = load ("res://audios/Rustling short.mp3")
var player_jump = load("res://audios/woohoo   Sound Effect.mp3")

func play_yay():
	$sfx.stream = yay
	$sfx.play()
	
func enemy_dead():
	$sfx.stream = enemy_dead
	$sfx.play()

func enemy_attack():
	$sfx.stream = enemy_attack
	$sfx.play()

func player_jump():
	$sfx.stream = player_jump
	$sfx.play()
