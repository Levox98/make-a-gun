class_name ScopePart extends WeaponPart


@export var zoom_level: float = 1.0
@export var aim_speed_bonus: float = 0.1


func initialise(zoom_lvl: float, aim_spd_bns: float) -> void:
    zoom_level = zoom_lvl
    aim_speed_bonus = aim_spd_bns
