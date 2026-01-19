extends Node

signal value_changed(new_value)

var _value: float
@export var max_value: float
@export var min_value: float
@export var start_value_decimal: float

func _ready():
	set_value(max_value * start_value_decimal)

func set_value(new_value):
	_value = new_value
	#print(_value)
	value_changed.emit(new_value)

func get_value():
	return _value

func add_value(add_number):
	if add_number< 0:
		remove_value(add_number * -1)
		return
	if _value == max_value:
		return
	if _value + add_number > max_value:
		set_value(max_value)
		return
	set_value(_value + add_number)

func remove_value(remove_number):
	if remove_number < 0:
		remove_value(remove_number * -1)
		return
	if _value == min_value:
		return
	if _value - remove_number < min_value:
		set_value(min_value)
		return
	set_value(_value - remove_number)
