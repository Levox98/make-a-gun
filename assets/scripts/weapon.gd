class_name Weapon extends Node


@export var base_damage: int = 10
@export var parts: Dictionary = {}


func add_part(part: WeaponPart) -> void:
    if part.part_type in parts:
        print("Replacing existing ", WeaponPart.get_part_type_string(part))
    
    parts[part.part_type] = part


func remove_part(part_type: WeaponPart.PartType) -> void:
    parts.erase(part_type)


func calculate_damage() -> int:
    var total_damage = base_damage

    print(parts)

    for part in parts.values():
        
        print(part)

        if part.has_damage:
            total_damage += part.damage

    return total_damage
