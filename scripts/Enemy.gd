extends KinematicBody2D
const UP = Vector2(0,-1)
const SPEED = 200

var motion = Vector2.ZERO
var left = Vector2(-1,0)
var right = Vector2(1,0)

var direction = Vector2.ZERO

func _ready():
	direction = left 
	
func _physics_process(delta):
	

	
	motion.x = direction.x * SPEED
	move_and_slide(motion,UP)

	if is_on_wall():
		if direction == left:
			direction = right
		elif direction == right:
			direction = left
			
			
			

	



func _on_Player_body_entered(body):
	if(body.is_in_group("Player")): 
		print("spieler hat getroffen")
		queue_free()



func _on_Area2Denemy_body_entered(body):
	if(body.is_in_group("Player")): 
		print("enemy hat getroffen ")
