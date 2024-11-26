extends Control

func _on_pressed() -> void:
	get_tree().change_scene_to_file("C:/Users/amir_/OneDrive/Documentos/GODOT/Voces-Silenciadas---Tesis/menús/Introduccion/introducción.tscn")
	
func _on_button_2_pressed() -> void:
	get_tree().quit()
