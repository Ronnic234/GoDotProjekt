extends KinematicBody2D
#test


# Die MovingBridges bewegen sich die ganze Zeit während des Spiels auf ihren festgelegten Wegen. 
func _ready():
	$AnimationPlayer.play("Movement ")
