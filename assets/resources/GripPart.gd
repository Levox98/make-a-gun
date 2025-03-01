class_name GripPart extends WeaponPart


@export var damage: int


func _init() -> void:
    has_damage = true


func initialise(dmg: int) -> void:
    damage = dmg
