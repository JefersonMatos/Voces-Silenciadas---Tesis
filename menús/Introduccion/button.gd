extends Button

var cont = 1
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_pressed() -> void:
	cont += 1
	if cont == 2:
		$"../texto".text = "En los últimos meses, SUNAFIL, el organismo encargado de fiscalizar el cumplimiento de derechos laborales en el Perú, ha recibido múltiples denuncias anónimas sobre acoso y violencia sexual laboral en la cadena de televisión Parademicama. "
	elif cont == 3:
		$"../texto".text = "Sin embargo, cada intento de investigar estos casos ha terminado en callejones sin salida: los inspectores enviados aseguran no encontrar irregularidades, pero las denuncias no cesan."
	elif cont == 3:
		$"../texto".text = "Algo oscuro se esconde entre los reflectores y cámaras, y las sospechas de corrupción comienzan a pesar en los altos cargos de SUNAFIL. ¿Acaso la verdad está siendo enterrada bajo sobornos y amenazas?"
	elif cont == 4:
		$"../texto".text = "Para desenmascarar lo que ocurre tras las puertas de Parademicama, SUNAFIL toma una decisión audaz: infiltrar a una de sus agentes más capacitadas como trabajadora encubierta. Asumirá el papel de asistente personal del jefe, adentrándose en un entorno donde las apariencias engañan y la verdad se oculta bajo capas de silencio."
	elif cont == 5:
		$"../texto".text = "Así comienza tu historia. Eres la investigadora encubierta, y este es tu primer día en la cadena de televisión. Cada decisión que tomes podría acercarte a la verdad... o hacerte caer en las mismas redes que han silenciado a otros antes que tú."
	elif cont == 6:
		$"../texto".text = "¿Estás listo para descubrir lo que nadie más ha podido?"
	elif cont == 7:
		get_tree().change_scene_to_file("C:/Users/amir_/OneDrive/Documentos/GODOT/Voces-Silenciadas---Tesis/raiz.tscn")
