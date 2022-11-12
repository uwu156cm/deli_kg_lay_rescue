extends Node

export (int) var max_health = 1 setget setmax_health

var health = max_health setget sethealth
func setmax_health(value):
	max_health = value
	self.health = min(health, max_health)

func sethealth(value):
	health = value
	
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	self.health = max_health # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
