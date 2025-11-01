class_name Firearm extends Resource

@export var projectile : PackedScene
@export var rpm        : int

func SpawnTime () -> float : return 60.0 / rpm
