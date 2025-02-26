class_name Weapon extends Node


@export var base_damage: int = 10
@export var parts: Dictionary = {}


func add_part(part_name: String, effect) -> void:
    parts[part_name] = effect


func calculate_damage() -> int:
    var total_damage = base_damage

    for part in parts.values():
        total_damage += part

    return total_damage
