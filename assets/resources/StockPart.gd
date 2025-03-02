class_name StockPart extends WeaponPart


func _init() -> void:
    name = "Stock"
    part_type = WeaponPart.PartType.STOCK
    size = Vector2(3, 2)


func _get_custom_string() -> String:
    return ""
