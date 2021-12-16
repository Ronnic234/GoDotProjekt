extends Area2D


func _ready():
	pass 



#Wenn der Player den Schlüssel berührt, verschwindet der Schlüssel danach.
func _on_Schlssel_body_entered(body):
	queue_free()
