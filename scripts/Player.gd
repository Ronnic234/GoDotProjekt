extends KinematicBody2D

# Geschwindigkeit des Spielers 
const SPEED = 500
const UP = Vector2(0, -1)
const GRAVITY = 30
const JUMP_HEIGHT = -1000

var points = 0


# Bewegungsrichtung des Spielers 
var motion = Vector2()

# Boolean = false, true 
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
#Wenn der Pfeil nach oben gedrückt wird, springt der Player hoch und wird durch die Schwerkraft wieder nach unten gezogen
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP_HEIGHT
		else:
			motion.y = 800
	else: 
		motion.y += GRAVITY
		$AnimatedSprite.play("Jump")
	
	move_and_slide(motion, UP)

#Wenn der Player den Schlüssel behrührt, wird er eingesammelt 
func _on_Schlssel_body_entered(body):
	hasKey = true
	print("Wir haben jetzt den Schlüssel!")
	
# Der Player muss den Schlüssel eingesammelt haben, damit sich die Schatztruhe öfnnen kann. 
func _on_Schatztruhe_body_entered(body):
		self.show() 

#Wenn der Spieler eine Münze berührt, geht der Coins Counter um 1 hoch 
func _on_Coins_addCoin():
	points += 1
	print(points)
	
	$Camera2D/MainInterface/Label.set_text(str(points))


func _on_Enemy_Luca_Voigtmann_in_15_jahren_Enemygetroffen():
	points += 1
	print(points)


func _on_Enemy_LV_JR_Enemygetroffen():
	points += 1
	print(points)
