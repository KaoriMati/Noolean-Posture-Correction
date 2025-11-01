extends VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for i in get_children():
		if "ContentButton" in i.name:
			print(i.name)
