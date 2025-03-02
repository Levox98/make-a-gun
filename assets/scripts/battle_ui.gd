class_name BattleUI extends CanvasLayer


@onready var player_hp_label: Label = %PlayerHealth
@onready var enemy_hp_label: Label = %EnemyHealth
@onready var attack_button: Button = %AttackButton
@onready var weapon_data_label: Label = %WeaponDataLabel


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


func _on_barrel_button_button_up() -> void:
	var barrel = BarrelPart.new()
	barrel.initialise(0.0, randf_range(1.0, 1.5), randi_range(2, 10))
	player.weapon.add_part(barrel)


func _on_grip_button_button_up() -> void:
	var grip = GripPart.new()
	grip.initialise(randi_range(2, 5))
	player.weapon.add_part(grip)


func _on_stock_button_button_up() -> void:
	var stock = StockPart.new()
	player.weapon.add_part(stock)
