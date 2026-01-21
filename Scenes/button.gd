extends Button

@export var bar: Node

# Called when the node enters the scene tree for the first time.
func _ready():
	print("hola")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _pressed() -> void:
	bar.take_damage(40)
