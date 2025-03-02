class_name GripPart extends WeaponPart


@export var damage: int


func _init() -> void:
    has_damage = true
    part_type = WeaponPart.PartType.GRIP


func initialise(dmg: int) -> void:
    damage = dmg
