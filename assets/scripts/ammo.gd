class_name Ammo extends Node


var type_name: String = "Basic Ammo"
var damage: int = 0


func _init(ammo_name: String, ammo_damage: int) -> void:
    type_name = ammo_name
    damage = ammo_damage
