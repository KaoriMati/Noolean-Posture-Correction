extends Control

@export var offset_change: int = 100
@onready var sidebar_button: VBoxContainer = $HSplitContainer/Panel/SidebarButtonContainer


func _on_h_split_container_dragged(offset: int) -> void:
	#print(offset)
	if offset <= offset_change:
		for i in sidebar_button.get_children():
			if "ContentButton" in i.name:
				i.get_child(1).visible = false
	else:
		for i in sidebar_button.get_children():
			if "ContentButton" in i.name:
				i.get_child(1).visible = true
