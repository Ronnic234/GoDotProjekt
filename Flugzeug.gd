extends KinematicBody

const MAXSPEED = 30
const ACCELERATION = 0.75
var inputVektor = Vector3()
var velo = Vector3()

func _physics_process (delta):
	inputVector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	inputVector.y = Input.get_action_strength("ui_up") - Input.get_action_strength("ui_down")
	inputvektor = inputvektor.normalized()
	velo.x = move_toward(velo.x, inputVektor.x * MAXSPEED, ACCELERATION) 
	velo.y = move_toward(velo.y, inputVektor.y * MAXSPEED, ACCELERATION) 
	rotation_degrees.z = velo.x * -2
	rotation_degrees.x = velo.y / 2
	rotation_degrees.y = -velo.x / 2
	move_and_slide(velo)
	
