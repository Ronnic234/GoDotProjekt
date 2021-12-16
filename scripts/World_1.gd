extends Node2D


#Wenn der Player das Spiel betritt, sendet die Area 2D ein Signal an World 1, dass der Spieler sich nun in der Welt befindet. 
func _on_Area2D_body_entered(body):
	get_tree().change_scene("res://World_1.tscn")
	

#Wenn das Spiel startet, ist die Schatztruhe geschlossen 
var schatztruhe_auf = load("res://Assets /Collectable Objects/Chest_02_Unlocked.png")
func _on_Schatztruhe_body_entered(body):

#Schatztruhe öffnet sich nur, wenn alle Coins und der Schlüssel eingesammelt wurden
	if get_node("Player").hasKey == true && get_node("Player").coins == 6:
		get_node("Portal").show()
		get_node("Texte/Spiel_vorbei").show()
		get_node("CollectableObjects/Schatztruhe/Schatztruhe_Sprite").set_texture(schatztruhe_auf)
#Wenn der Spieler den Schlüssel eingesammelt hat, zeigt sich das Portal und der Text der Schatztruhe erscheint ebenfalls 

		yield(get_tree().create_timer(1),"timeout")
		get_tree().change_scene("res://World_2.tscn")
#Nach einer Sekunde, wird man dann in World 2 weitergeleitet, wo der Player neu spawnt
