class_name EnemyApplier extends Node

@onready var hp    : HP        = get_node("HP")
@onready var chase : Chase     = get_node("Chase")
@onready var rect  : ColorRect = get_node("ColorRect")
@onready var drop  : Drop      = get_node("Drop")


func Apply(entry : Enemy) -> void:
    hp.SetupHP(entry.hp)
    chase.speed = entry.speed
    rect.set_color(entry.testColor)
    drop.item = entry.drop
