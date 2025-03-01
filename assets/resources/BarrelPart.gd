class_name BarrelPart extends WeaponPart

@export var length: float = 0.0
@export var damage_multiplier: float = 1.0
@export var damage: int


func _init() -> void:
    has_damage = true


func initialise(lng: float, dmg_mult: float, dmg: int = randi_range(2, 10)) -> void:
    length = lng
    damage_multiplier = dmg_mult
    damage = dmg
