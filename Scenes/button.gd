extends Button

@export var bar: Node




func _pressed() -> void:
	bar.take_damage(40)
