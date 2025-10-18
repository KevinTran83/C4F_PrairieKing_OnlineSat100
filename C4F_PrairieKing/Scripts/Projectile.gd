extends Node

@export  var speed : float       = 450
@export  var dir   : Vector2     = Vector2.RIGHT
@onready var rb    : RigidBody2D = get_parent()

func _ready() -> void : rb.set_linear_velocity(dir.normalized() * speed)
