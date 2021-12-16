extends Node2D

# Wenn das Spiel startet, werden die Sterne angezeigt. 
func _ready():
	print("JETZT ECHT!")


# kahisd sdftgh

signal addCoin

# Wenn der Spieler durch den Stern läuft, nimmt er diesen auf und der Stern verschwindet. 
func _on_Area2D_body_entered(body):
	emit_signal("addCoin")
	queue_free()
