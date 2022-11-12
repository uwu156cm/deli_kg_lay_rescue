extends Control

var story_music = load ("res://audios/NewJeans - Attention inst.mp3")
var levelmap_music = load ("res://audios/ATEEZ - Eternal Sunshin inst.mp3") #pick me _ ateez htae chin loh htae lite pr kyg sordee kha
var summer_music = load ("res://audios/red flavor.mp3")
var winter_music = load ("res://audios/heart shaker.mp3")
var horror_music = load ("res://audios/Red Velvet Peek-A-Boo( Instrumental).mp3")
var win = load ("res://audios/Aju Nice.mp3")
var over = load ("res://audios/Loser(Outro).mp3")

#export (String) var label
#export (NodePath) var audio_stream_player_path
#export (String) var bus_name

#var music : AudioStreamPlayer

#enemy_attack tha din sr a than
#player ei a than
#enemy thay dk a than

func play_horror_music():
	$music.stream = horror_music
	$music.play()

func play_winter_music():
	$music.stream = winter_music
	$music.play()

func play_over():
	$music.stream = over
	$music.play()
	
func play_win():
	$music.stream = win
	$music.play()

func play_story_music():
	$music.stream = story_music
	$music.play()

func play_levelmap_music():
	$music.stream = levelmap_music
	$music.play()

func play_summer_music():
	$music.stream = summer_music
	$music.play()
	
func reset_volume():
	$music.volume_db = 0

