extends ColorRect
# Der Text der erscheint, wenn der Schlüssel eingesammelt wird, versteckt sich zu Beginn des Spiels 
func _ready():
	self.hide()

#Wenn der Player den Schlüssel aufgesammelt hat, erscheint der Text 
func _on_Schlssel_body_entered(body):
	self.show()
	yield(get_tree().create_timer(4.0),"timeout")
	self.hide()
#Nach 3 Sekunden verschwindet der Text wieder 
