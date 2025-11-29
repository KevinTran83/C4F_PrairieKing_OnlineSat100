extends Node

@export var targetReg : EnemyReg
@export_flags_2d_physics var playerLayer : int

func EliminateAll(player : Node2D) -> void:
    if not targetReg : return
    
    var result : int = player.get_collision_layer() & playerLayer
    if result == 0 : return
    
    targetReg.EliminateAll()
    get_parent().queue_free()
