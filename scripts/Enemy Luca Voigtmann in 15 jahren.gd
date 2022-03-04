extends KinematicBody2D


const UP = Vector2(0,-1)
const SPEED = 100




var motion = Vector2.ZERO
var left = Vector2(-1,0)
var right = Vector2(1,0)

var direction = Vector2.ZERO


func _ready():
	direction = left 
	
func _physics_process(delta):
	
	motion.x = direction.x *SPEED
	move_and_slide(motion, UP)
	if is_on_wall(): 
		if direction == left:
			direction = right 
		elif direction == right:
			direction = left 
			
			

signal Enemygetroffen 

func _on_Area2D_Player_body_entered(body):
	if(body.is_in_group("player")):
		print("Spieler hat getroffen!")
		emit_signal("Enemygetroffen")
		queue_free()





func _on_Area_2D_Enemy_body_entered(body):
	if(body.is_in_group("player")):
		print("Enemy hat getroffen!")
	

	if is_on_wall(): 
		move_and_collide() 
		$AnimatedSprite.flip_h = !AnimatedSprite.flip_h 
		
