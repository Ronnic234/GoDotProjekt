extends Node2D


#Wenn der Player in die Fallzone in World 2 fällt, wird das Spiel in World 1 neu gestartet
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://World_2.tscn")
	
	
	



func _on_Area2D2_body_entered(body):
	get_tree().change_scene("res://Welt 3.tscn")
	
