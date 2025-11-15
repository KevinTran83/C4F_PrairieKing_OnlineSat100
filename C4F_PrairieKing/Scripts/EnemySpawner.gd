extends Node

@export var defaultEnemy : PackedScene
@export var spawnTime    : float = 1
@export var spawnTimeMax : float = 10 # OPTIONAL
@export var spawnPoint   : Node2D

var timer : Timer

func _ready() -> void:
    timer = Timer.new()
    timer.timeout.connect(Spawn)
    timer.set_one_shot(true) # OPTIONAL
    add_child  .call_deferred(timer) 
    timer.start.call_deferred(randf_range(spawnTime, spawnTimeMax))
    
func Spawn() -> void:
    if not defaultEnemy or not spawnPoint : return
    
    var newEnemy = defaultEnemy.instantiate()
    add_child(newEnemy)
    newEnemy.set_global_position(spawnPoint.get_global_position())
    timer.start(randf_range(spawnTime, spawnTimeMax)) # OPTIONAL
