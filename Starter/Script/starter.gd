
func _ready() -> void:
	ResponsiveSignal.connect("layout_mode_changed", Callable(self,"_on_layout_mode_changed"))
func _on_layout_mode_changed(is_landscape: bool):
	pass
