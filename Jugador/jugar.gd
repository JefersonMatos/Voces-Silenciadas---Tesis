extends Control

func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://escenarios/Zona de colaboradores/zona_de_produccion.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()