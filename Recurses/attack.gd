class_name Attack
extends Resource

@export var energy_waste: float
@export var ram_use: float
@export var heat_increase: float

func _init(p_energy_waste = 0, p_ram_use = 0, p_heat_increase = 0) -> void:
	energy_waste = p_energy_waste
	ram_use = p_ram_use
	heat_increase = p_heat_increase
