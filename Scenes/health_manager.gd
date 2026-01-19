extends Node

var health_bar
var character_stats

func _ready():
	health_bar = find_child("Bar")
	character_stats = get_node("../Stats")
	if character_stats == null:
		push_error("There is no stats in the herarchy")
	health_bar.max_value = character_stats.max_hp


func take_damage(damage: float):
	health_bar.remove(damage - character_stats.defense)
	if health_bar.get_value() <= 0:
		dead()

func dead():
	pass
