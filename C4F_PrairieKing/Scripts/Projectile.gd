class_name Projectile extends Node

@export  var speed : float       = 450
@onready var rb    : RigidBody2D = get_parent()

func Fire(angle : float) -> void : rb.set_linear_velocity(Vector2.RIGHT.rotated(angle) * speed)
