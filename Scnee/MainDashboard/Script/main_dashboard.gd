extends Control



func _ready() -> void:
	ResponsiveSignal.connect("layout_mode_changed", Callable(self,"_on_layout_mode_changed"))
func _on_layout_mode_changed(is_landscape: bool):
	if is_landscape == true:
		#$Header/Account.visible = true
		#$Header/Logo.visible = true
		$Header/search.visible = true
		#$Header/search.anchor_left = 0.3
		#$Header/search.anchor_right = 0.7
	else:
		#$Header/Account.visible = false
		#$Header/Logo.visible = false
		$Header/search.visible = false
		#$Header/search.anchor_left = 0.06
		#$Header/search.anchor_right = 0.94
	
