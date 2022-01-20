extends Node2D


#Wenn der Player in die Fallzone in World 2 fällt, wird das Spiel in World 1 neu gestartet
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://World_1.tscn")
	

