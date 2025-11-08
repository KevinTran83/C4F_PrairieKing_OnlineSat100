extends Node

@export var target : Target

func _ready() -> void:
    if not target : return
    target.Set(get_parent())
