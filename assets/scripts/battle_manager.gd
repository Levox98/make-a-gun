class_name BattleManager extends Node


var turn_order: Array = ["player", "enemy"]
var current_turn: int = -1

@export var player: Player
@export var enemy: Enemy
@export var ui: BattleUI


func _ready():
	print("Battle started!") 

	if player == null:
		print("Error: Player node not found!")
	if enemy == null:
		print("Error: Enemy node not found!")

	if player and enemy:
		enemy.set_target(player)
		next_turn()  # Start the first turn


func next_turn() -> void:
	current_turn = (current_turn + 1) % turn_order.size()
	print("Current turn: " + turn_order[current_turn])

	if turn_order[current_turn] == "player":
		player_turn()
	else:
		enemy_turn()


func player_turn() -> void:
	print("Player's turn, waiting for input")
	player.attack(enemy)
	ui.update_ui()
	next_turn()


func enemy_turn() -> void:
	print("Enemy attacks")
	# Apply damage and go to next turn
	await get_tree().create_timer(1).timeout # simulate thinking time
	enemy.attack()
	ui.update_ui()
	next_turn()
