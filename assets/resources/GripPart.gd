class_name GripPart extends WeaponPart


@export var damage: int


func _init() -> void:
    name = "Grip"
    has_damage = true
    part_type = WeaponPart.PartType.GRIP
    size = Vector2(2, 1)


func initialise(dmg: int) -> void:
    damage = dmg


func _get_custom_description() -> String:
    return "Damage: %d" % [damage]
