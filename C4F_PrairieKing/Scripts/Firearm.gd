class_name Firearm extends Resource

@export var projectile : PackedScene
@export var rpm        : int

func SpawnTime () -> float:
    var minutes : float = float(rpm) / 60
    return minutes / 60
