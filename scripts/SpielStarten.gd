extends Button




#Wenn der Knopf "Spiel Starten" gedrückt wird, wird das Spiel gestartet und man landet in World 1 
func _on_Button_pressed():
	get_tree().change_scene("res://World_2.tscn")
	
