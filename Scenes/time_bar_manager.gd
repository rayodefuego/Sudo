extends Node

var bar
var timer: Timer
@export var tick_number: int
@export var add_number: float
var current_tick_number = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	bar = get_child(0)
	timer = get_node("/root/TestCombat/Timer")
	timer.timeout.connect(_on_timer_timeout)
	
	
	#timer.timeout.connect(_on_timer_timeout)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	current_tick_number += 1
	if current_tick_number == tick_number:
		bar.add_value(add_number)
		current_tick_number = 0
	
