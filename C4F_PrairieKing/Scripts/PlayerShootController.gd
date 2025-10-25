extends Node

@onready var shoot : Shoot = get_parent().get_node("Shoot")

func _process(delta: float) -> void:
    if   (Input.is_action_pressed("ShootDown"))  : shoot.PullTrigger(PI/2)
    elif (Input.is_action_pressed("ShootLeft"))  : shoot.PullTrigger(PI)
    elif (Input.is_action_pressed("ShootRight")) : shoot.PullTrigger(0)
    elif (Input.is_action_pressed("ShootUp"   )) : shoot.PullTrigger(-PI/2)
    else                                         : shoot.HoldFire()
