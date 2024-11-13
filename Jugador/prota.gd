extends CharacterBody2D

# vinculamos el character body con el AnimatedSprite2D2
@onready var _animation_player = $AnimatedSprite2D3

#Creamos la variable de velocidad
var move_speed : int = 200


func _physics_process(_delta: float) -> void:
	
	# Cuando no se presionen las teclas el personaje se queda parado
	velocity.y = 0
	velocity.x = 0

	# movimiento en las cuatro direcciones 
	if Input.is_key_pressed(KEY_LEFT):
		velocity.x -= move_speed
	if Input.is_key_pressed(KEY_RIGHT):
		velocity.x += move_speed
	if Input.is_key_pressed(KEY_UP):
		velocity.y -= move_speed
	if Input.is_key_pressed(KEY_DOWN):
		velocity.y += move_speed
	
	# cuando el movimiento es 0 animacion idle
	if velocity.y == 0:
		if velocity.x == 0:
			_animation_player.play("idle frente")
	
	#animaciones de caminar en cuatro direcciones
	if velocity.x == 200:
		_animation_player.play("caminar derecha")
	elif velocity.x == -200:
		_animation_player.play("caminar izquierda")
	if velocity.y == 200:
		_animation_player.play("caminar abajo")
	elif velocity.y == -200:
		_animation_player.play("caminar arriba")
	
	
	move_and_slide()
