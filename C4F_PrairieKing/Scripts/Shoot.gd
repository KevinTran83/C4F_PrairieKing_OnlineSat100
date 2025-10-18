extends Node

@export var equipped : Firearm

var timer : Timer

func _ready() -> void:
    timer = Timer.new()
    add_child(timer)
