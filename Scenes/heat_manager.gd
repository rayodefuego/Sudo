extends Node

@onready var heat_bar = find_child("HeatBar")
@onready var character_stats = get_node("../../Stats")



func change_temperature(heat):
	var temperature = heat_bar.get_value()
	if temperature <= character_stats.refrigeration_limit:
		heat_bar.add_value(heat + character_stats.heat_increase)
		return
	else:
		heat_bar.add_value(heat + character_stats.heat_increase - character_stats.refrigeration_power)
		print(heat_bar.get_value())
		
