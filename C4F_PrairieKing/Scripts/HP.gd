class_name HP extends Node

@export var maxHP : float = 5

var remainingHP : float
var hasDiedOnce : bool

signal onDeath

func _ready() -> void : SetupHP(maxHP)

func SetupHP(amount : float) -> void:
    maxHP       = amount
    remainingHP = amount
    hasDiedOnce = false
    
func Deplete(other : Node) -> void:
    var bullet = other.get_node("Projectile") as Projectile
    if not bullet : return
    
    remainingHP -= bullet.GetDamage()
    if remainingHP < 0 : remainingHP = 0
    
    if remainingHP == 0 and not hasDiedOnce:
        onDeath.emit()
        hasDiedOnce = true
