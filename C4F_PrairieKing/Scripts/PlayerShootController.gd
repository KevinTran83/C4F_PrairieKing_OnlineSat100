extends Node

@onready var shoot : Shoot = get_parent().get_node("Shoot")

func _process(delta: float) -> void:
    if   (Input.is_action_just_pressed("ShootDown"))  : shoot.PullTrigger(PI/2)
    elif (Input.is_action_just_pressed("ShootLeft"))  : shoot.PullTrigger(PI)
    elif (Input.is_action_just_pressed("ShootRight")) : shoot.PullTrigger(0)
    elif (Input.is_action_just_pressed("ShootUp"   )) : shoot.PullTrigger(-PI/2)
    elif (Input.is_action_just_released("ShootDown")
       or Input.is_action_just_released("ShootLeft")
       or Input.is_action_just_released("ShootRight")
       or Input.is_action_just_released("ShootUp")
         )                                            : shoot.HoldFire()
