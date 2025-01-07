extends Area2D
@onready var icono = $interactuar
@onready var indicacion = get_tree().get_first_node_in_group("interaccion")
@onready var dialogos = ["veterana", "veterana2", "veterana3", "veterana4", "veterana5"]
@export var dialogo_id: String  # ID del diálogo configurable
@export var posiciones: Array[Vector2] = [Vector2(433,288), Vector2(1273,-195), Vector2(433,288)]  # Lista de posiciones predefinidas
var posicion_index: int = 0  # Índice de posición actual
#$/Personajes/Jugador/Camera2D/Control/CanvasLayer/E
var is_player_near = false  # Señal para saber si el jugador está cerca
var dialogo_index: int = 0  


func _on_body_entered(body):
	if body.name == "Jugador":  # Verifica que sea el jugador
		print("Jugador cerca al jefe")
		icono.show()
		indicacion.show()
		is_player_near = true 
	

func _on_body_exited(body):
	if body.name == "Jugador":  # Asegúrate de verificar que sea el jugador
		icono.hide()
		indicacion.hide()
		is_player_near = false




func actualizar_dialogo():
	#if dialogo_id == "veterana":
		#var dialogos = ["veterana", "veterana2", "veterana3", "veterana4", "veterana5"]  
	# Incrementa el índice hasta el máximo disponible
	if dialogo_index < dialogos.size() - 1: 
		dialogo_index += 1 
		dialogo_id = dialogos[dialogo_index]
		
func mover_personaje():
	# Cambia la posición del NPC si hay más posiciones en la lista
	if posicion_index < posiciones.size():
		position = posiciones[posicion_index]
		posicion_index += 1  # Avanza al siguiente índice
		print("Personaje movido a la posición: ", position)
	else:
		print("No hay más posiciones predefinidas.")
		
		
func _process(delta):
	if is_player_near and Input.is_action_just_pressed("interaccion"):
		Dialogic.start(dialogo_id)
		actualizar_dialogo()
		
