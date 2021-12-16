extends ColorRect
# Wenn man nicht das Fragezeichen berührt, zeigt sich der Text nicht. 
func _ready():
	self.hide()

# Wenn der Player das Fragezeichen berührt, zeigt sich der Text. 
func _on_Fragezeichen_body_entered(body):
	self.show()
	
# Text des Fragezeichens verschwindet wieder, wenn der Player aus dem Fragezeichen geht. 
func _on_Fragezeichen_body_exited(body):
	self.hide()
