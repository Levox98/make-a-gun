class_name Enemy extends Node


@export var entity_name: String = "Enemy"
@export var health: int = 50
@export var attack_damage: int = 10

var target = null # reference to player


func set_target(player) -> void:
	target = player


func attack():
	if target:
		print(name + " attacks for " + str(attack_damage) + " damage!")
		target.take_damage(attack_damage)


func take_damage(amount: int) -> void:
	health -= amount
	print(name + " takes " + str(amount) + " damage! Remaining HP: " + str(health))
	if health <= 0:
		die()


func die() -> void:
	print(name + " has been defeated!")
	queue_free()
