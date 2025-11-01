extends Control

func _ready() -> void:
	ResponsiveSignal.connect("layout_mode_changed", Callable(self,"_on_layout_mode_changed"))
func _on_layout_mode_changed(is_landscape: bool):
	if is_landscape: #landscape
		%RightPage.anchor_left =0.518
		%RightPage.anchor_top = 0.025
		%RightPage.anchor_right =0.887
		%RightPage.anchor_bottom  = 1.0
		%LeftPage.visible = true
		# ubah posisi elemen, scale, dsb
	else: #potrait
		%RightPage.anchor_left = 0.05
		%RightPage.anchor_top = 0.03
		%RightPage.anchor_right = 0.95
		%RightPage.anchor_bottom  = 0.98
		%LeftPage.visible = false
				# ubah layout untuk potret
