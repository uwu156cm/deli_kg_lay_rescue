extends KinematicBody2D

var velocity = Vector2(0,0)
var speed = 320
const force = -1000
const gravity = 30

func _ready():
	$Timer.stop()
	
func _process(delta):
	$ProgressBar.value = $Stat.health


func _physics_process(delta):
	if Input.is_action_pressed("move_right"):
		velocity.x = speed 
		$Sprite.play("run")
		$Sprite.flip_h = false
	elif Input.is_action_pressed("move_left"):
		velocity.x = -speed 
		$Sprite.play("run")
		$Sprite.flip_h = true
	else:
		$Sprite.play("idle")
		
	if not is_on_floor():
		$Sprite.play("air")
		
	velocity.y = velocity.y+gravity
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = force
	
	velocity = move_and_slide(velocity, Vector2.UP)
	
	velocity.x = lerp(velocity.x,0,0.2)

func bounce():
	velocity.y = force*0.7

func jumpback(var enepos):
	$Timer.start()
	modulate=Color(1,0.3,0.3,0.3)
	velocity.y = force*0.5
	if position.x > enepos:
		velocity.x =-2000
		speed = speed*0.6
	
		
func jumpback1(var enepos):
	$Timer.start()
	modulate=Color(1,0.3,0.3,0.3)
	velocity.y = force*0.5
	velocity.x =2000
	speed = speed*0.6
	
func _on_Timer_timeout():
	modulate=Color(1,1,1,1)
	velocity.y = velocity.y+gravity
	speed = 300
	$Stat.health = $Stat.max_health

func _on_Area2D_area_entered(area):
	$Stat.health -= 1
	if $Stat.health <= 0:
		get_tree().change_scene("res://scenes/game over winter.tscn") # Replace with function body.




func _on_Area2D_body_entered(body):
	if body.name == "Player":
		$Sprite.play("slide")
