extends Area2D
@onready var icono = $interactuar
@onready var indicacion = get_tree().get_first_node_in_group("interaccion")
#$/Personajes/Jugador/Camera2D/Control/CanvasLayer/E
var is_player_near = false  # Señal para saber si el jugador está cerca

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

func _process(delta):
	if is_player_near and Input.is_action_just_pressed("interaccion"):
		Dialogic.start("timeline")
