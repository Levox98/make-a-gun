class_name BarrelPart extends WeaponPart

@export var length: float = 0.0
@export var damage_multiplier: float = 1.0
@export var damage: int


func _init() -> void:
    name = "Barrel"
    has_damage = true
    part_type = WeaponPart.PartType.BARREL
    size = Vector2(1, 3)


func initialise(lng: float, dmg_mult: float, dmg: int = randi_range(2, 10)) -> void:
    length = lng
    damage_multiplier = snappedf(dmg_mult, 0.01)
    damage = dmg


func _get_custom_description() -> String:
    return "Length: %d, Dmg mult: %.2f, Dmg: %d" % [length, damage_multiplier, damage]
