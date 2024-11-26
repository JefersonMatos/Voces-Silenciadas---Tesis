extends Control

@onready var progress : Array
@onready var scene_load_status : int

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	ResourceLoader.load_threaded_request("C:/Users/amir_/OneDrive/Documentos/GODOT/Voces-Silenciadas---Tesis/raiz.tscn")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	scene_load_status = ResourceLoader.load_threaded_get_status("C:/Users/amir_/OneDrive/Documentos/GODOT/Voces-Silenciadas---Tesis/raiz.tscn", progress)
	%ProgressBar.value = progress[0] * 100
	
#
#func _on_progress_bar_value_changed(value):
	#if value == 100 and scene_load_status == ResourceLoader.THREAD_LOAD_LOADED:
		#get_tree().call_deferred("change_scene_to_packed", ResourceLoader.load_threaded_get("C:/Users/amir_/OneDrive/Documentos/GODOT/Voces-Silenciadas---Tesis/raiz.tscn"))
		#
		
