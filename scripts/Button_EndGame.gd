extends Button

# bla

# Wenn der Button gedrückt wird, wird das Spiel beendet und geschlossen. 
func _ready():
	pass 


func _on_Button_pressed():
	get_tree().quit()
