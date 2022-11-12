extends KinematicBody2D

var speed = 70
var velocity = Vector2()
export var direction = -1

func _ready():
	$ASS.play("walk")
	$Timer.stop()

func _physics_process(delta):
	if is_on_wall() or not $ASS/RC.is_colliding():
		direction = direction * -1
		$ASS.scale.x = $ASS.scale.x * -1
		$attack/CollisionShape2D.position.x *= -1
		

		
	velocity.y += 20
	
	velocity.x = speed * direction
	
	velocity = move_and_slide(velocity, Vector2.UP)


func _on_to_jump_body_entered(body):
	if body.name == "Player":
		$Timer.start()
		$ASS.play("die")
		speed = 0
		body.bounce()
		#GameSfx.play_enemy_dead()
				
func _on_Timer_timeout():
	queue_free()
	
func _on_attack_body_entered(body):
	if body.name == "Player":
		#GameSfx.play_enemy_attack()
		$ASS.play("attack")
		speed += 150
		
	
func _on_attack_body_exited(body):
	if body.name == "Player":
		_ready()
		speed = 70


func _on_gethurt_body_entered(body):
	if body.name == "Player":
		#GameSfx.play_enemy_dead()
		body.jumpback(position.x)


func _on_gethurt1_body_entered(body):
	if body.name == "Player":
		#GameSfx.play_enemy_dead()
		body.jumpback1(position.x)
