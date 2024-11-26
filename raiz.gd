extends Node2D

@onready var cam = $cam_1

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	cam.make_current()  # Activa la cámara
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	cam.queue_free()
