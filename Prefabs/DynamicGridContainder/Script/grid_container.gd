extends GridContainer

func _ready() -> void:
	ResponsiveSignal.connect("layout_mode_changed", Callable(self,"_on_layout_mode_changed"))
func _on_layout_mode_changed(is_landscape: bool):
	if is_landscape == false:
		columns = get_child_count()+1
		for i in get_children():
			if i is Button:
				
				i.icon_alignment = HORIZONTAL_ALIGNMENT_CENTER
				if i.text != "":
					
					i.vertical_icon_alignment = VERTICAL_ALIGNMENT_TOP
	else:
		columns = 1
		for i in get_children():
			if i is Button:
				
				i.icon_alignment = HORIZONTAL_ALIGNMENT_LEFT
				if i.text != "":
					
					i.vertical_icon_alignment = VERTICAL_ALIGNMENT_CENTER
