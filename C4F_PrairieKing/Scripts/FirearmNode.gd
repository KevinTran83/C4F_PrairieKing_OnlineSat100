class_name FirearmNode extends Node

@export var firearm : Firearm

func Take() -> Firearm:
    if not firearm:
        print("Forgot to add a resource to FirearmNode.firearm")
        return null
    queue_free()
    return firearm

func HandOver(other : Node2D) -> void:
    var shoot : Shoot = other.get_node("Shoot")
    if not shoot : return
    shoot.Equip(Take())
