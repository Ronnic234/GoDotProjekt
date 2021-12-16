extends ColorRect

# Der Text zur Aufklärung soll versteckt sein, wenn der Spieler kein Konkat mit dem Feld hat 
# Von Fabian als Test
# OK Find ich gut!
func _ready():
	self.hide()



# Wenn der Spieler das Feld berührt, dann zeigt sich der Text.
func _on_Aufklrung_body_entered(body):
	self.show()

# Wenn der Spieler das Feld wieder verlässt, wird der Text wieder versteckt. 
# Nach Verlassen des Feldes wird eine Sekunde gewartet, bis die Szene in das MainMenu wechselt. 
func _on_Aufklrung_body_exited(body):
	self.hide()
func _on_Area2D_body_exited(body):
	yield(get_tree().create_timer(1),"timeout")
	get_tree().change_scene("res://World_1.tscn")
		
