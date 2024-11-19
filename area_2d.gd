extends Area2D
@onready var icono = $interactuar

func _on_body_entered(body):
	print("jugador cerca al jefe")
	icono.show()

func _on_body_exited(body):
	print("jugador se aleja del jefe")
	icono.hide()
