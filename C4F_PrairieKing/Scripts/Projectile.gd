class_name Projectile extends Node

@export  var speed : float       = 450
@onready var rb    : RigidBody2D = get_parent()

@export var damage : Damage

func Fire(angle : float) -> void : rb.set_linear_velocity(Vector2.RIGHT.rotated(angle) * speed)

func GetDamage() -> float:
    if not damage : return 0
    return damage.GetDamage()
