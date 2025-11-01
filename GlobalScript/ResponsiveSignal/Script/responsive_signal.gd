extends Control

signal layout_mode_changed(is_landscape: bool)

var aspect_ratio: float
var landscape_mode: bool = false

func _ready() -> void:
	var new_mode = change_ui_mode()
	if new_mode != landscape_mode:
		landscape_mode = new_mode
		#print("Layout mode changed! is_landscape:", landscape_mode)
		emit_signal("layout_mode_changed", landscape_mode)



func _on_item_rect_changed() -> void:
	#print(" Resolution is: ", get_viewport_rect().size.x," . ",get_viewport_rect().size.y+150)
		
	var new_mode = change_ui_mode()
	if new_mode != landscape_mode:
		landscape_mode = new_mode
		emit_signal("layout_mode_changed", landscape_mode)

func change_ui_mode_without_aspect_ratio()->bool:
	var size = get_viewport_rect().size
	if size.x> size.y:
		return true
	else:
		return false
func change_ui_mode() -> bool: 
	# landscape is true
	# portrait is false
	var size = get_viewport_rect().size
	aspect_ratio = size.x / size.y
	#print(aspect_ratio)
	if aspect_ratio < 1.0:
		return false # Portrait layout (tall device)
	elif aspect_ratio < 1.3:
		return true # Desktop / Tablet Landscape layout
	#elif aspect_ratio < 1.9:
		#return true # Standard Desktop / Laptop layout
	#elif aspect_ratio <= 2.5:
		#return false # Mobile Portrait layout
	else:
		return true # Mobile Landscape / Ultra-tall device layout
