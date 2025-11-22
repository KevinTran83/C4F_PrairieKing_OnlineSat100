class_name Drop extends Node

@export var item : PackedScene

func DropItem() -> void:
    if not item : return
    var dropped : Node2D = item.instantiate()
    get_parent().get_parent().add_child.call_deferred(dropped)
    dropped.set_global_position(get_parent().get_global_position())
