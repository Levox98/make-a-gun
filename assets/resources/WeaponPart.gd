class_name WeaponPart extends Resource

@export var name: String = "Unnamed Part"
@export var description: String = "No description."
@export var part_type: PartType
@export var weight: float = 0.0


var has_damage: bool = false


enum PartType { BARREL, STOCK, SCOPE, GRIP }

const PART_TYPE_NAMES = {
    PartType.BARREL : "Barrel",
    PartType.STOCK : "Stock",
    PartType.SCOPE : "Scope",
    PartType.GRIP : "Grip"
}


static func get_part_type_string(type: WeaponPart) -> String:
    return PART_TYPE_NAMES[type.part_type]
