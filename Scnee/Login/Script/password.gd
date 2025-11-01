extends LineEdit


func _on_texture_button_toggled(toggled_on: bool) -> void:
	if toggled_on == true:
		print("disable")
	else:
		print("enable")


func _on_texture_button_pressed() -> void:
	if secret == true:
		secret = false
		$TextureButton.texture_normal = load("res://Icon/visibility_24dp_FFFFFF_FILL0_wght400_GRAD0_opsz24.svg") 
	else:
		secret = true
		$TextureButton.texture_normal = load("res://Icon/visibility_off_24dp_FFFFFF_FILL0_wght400_GRAD0_opsz24.svg") 
