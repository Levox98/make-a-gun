class_name BattleUI extends CanvasLayer


@onready var player_hp_label: Label = %PlayerHealth
@onready var enemy_hp_label: Label = %EnemyHealth
@onready var attack_button: Button = %AttackButton


var player: Player
var enemy: Enemy
var battle_manager: BattleManager


func _ready() -> void:
	# TODO: replace this shitty code, because it depends on placement order of the nodes in scene tree
	# if you put battle ui below 'battle manager' this crashes
	battle_manager = get_parent().get_node("BattleManager")
	player = battle_manager.player
	enemy = battle_manager.enemy

	attack_button.pressed.connect(_on_attack_pressed)
	update_ui()


func update_ui() -> void:
	player_hp_label.text = "Player HP: " + str(player.health)
	enemy_hp_label.text = "Enemy HP: " + str(enemy.health)


func _on_attack_pressed() -> void:
	battle_manager.player_attack()
	update_ui()
