class_name Player extends Node


@export var player_name: String = "Player"
@export var health: int = 100
@export var weapon: Weapon # reference to the player's weapon


func _ready() -> void:
    print(get_path())


func take_damage(amount: int) -> void:
    health -= amount
    print(player_name + " takes " + str(amount) + " damage! Remaining HP: " + str(health))
    if health <= 0:
        die()


func attack(target: Enemy) -> void:
    if weapon:
        var damage = weapon.calculate_damage()
        print(name + " attacks for " + str(damage) + " damage!")
        target.take_damage(damage)


func die() -> void:
    print(name + " has been defeated!")
    queue_free()  # End the battle or trigger game over logic
