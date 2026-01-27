extends Node

var active_actions: Array[Resource]
var action_timer: Dictionary[String, int]

# Posiblemente Refactorizar para no usarlos
@export var heat_manager: Node

@export var actions: Array[Resource]


@onready var timer = get_node("/root/TestCombat/Timer")

func _ready() -> void:
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	activate_action("basic_impact")
	_calculate_actions_atrivutes()

func activate_action(action_name: String):
	var action
	for p_action in actions:
		if p_action.attack_name == action_name:
			action = p_action
		else:
			printerr("There is no action with the name: " + action_name)
			return
	if active_actions.has(action):
		return
	active_actions.append(action)

func _calculate_actions_atrivutes():
	var heat = 0
	for action in active_actions:
		print(action.heat_increase)
		heat += action.heat_increase
		
	heat_manager.change_temperature(heat)
