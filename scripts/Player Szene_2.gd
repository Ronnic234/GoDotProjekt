extends KinematicBody2D

# Geschwindigkeit / Höhe vom Sprungs des Spielers / Schwerkraft die den Spieler runterzieht. 
const SPEED = 500
const UP = Vector2(0, -1)
const GRAVITY = 30
const JUMP_HEIGHT = -100 


# Bewegungsrichtung des Spielers 
var motion = Vector2()

# Player besitzt den Schlüssel nicht. 
var hasKey = false




# Funktion, die immer aufgerufen wird 
func _physics_process(delta):


# wenn ich nach rechts drücke, passiert das:
	if Input.is_action_pressed("ui_right"):
		motion.x = SPEED
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("Run")

# wenn ich nach links drücke, passiert das:
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
		$AnimatedSprite.play("Run")
		$AnimatedSprite.flip_h = true 

# wenn man nichts drückt, bleibt er eifach im Idle stehen 
	else: 
		motion.x = 0
		$AnimatedSprite.play("Idle")
		
# Wenn man auf der Tastatur hoch drückt, springt der Player. 
# Die Schwerkraft zieht den Spieler nach dem Sprung wieder runter auf den Boden.  
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		else:
			motion.y = 800
	else: 
		motion.y += GRAVITY
		$AnimatedSprite.play("Jump")
	
	move_and_slide(motion, UP)

#Wenn der Spieler das Fragezeichen in World 2 berührt, wird ein Timer auf 3 Sek. gestellt. Wenn die Zeit abegelaufen ist, wird man zurück ins Main Menu transportiert
func _on_Aufklrung_body_entered(body):
	yield(get_tree().create_timer(3),"timeout")
	get_tree().change_scene("res://MainMenu.tscn")
