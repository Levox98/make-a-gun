class_name WeaponPart extends Resource

@export var name: String = "Unnamed Part"
@export var description: String = "No description."
@export var part_type: PartType
@export var weight: float = 0.0

@export var size: Vector2 = Vector2(1, 1)  # Width, Height in grid cells
@export var icon: Texture2D  # Texture for UI display

var has_damage: bool = false


enum PartType { BARREL, STOCK, SCOPE, GRIP }

const PART_TYPE_NAMES = {
    PartType.BARREL : "Barrel",
    PartType.STOCK : "Stock",
    PartType.SCOPE : "Scope",
    PartType.GRIP : "Grip"
}


func _to_string() -> String:
    return name + "\n" + description + "\n" + get_part_type_string(part_type) + "\n" + _get_custom_description()


func _get_custom_description() -> String:
    return ""


static func get_part_type_string(type: PartType) -> String:
    return PART_TYPE_NAMES[type]
