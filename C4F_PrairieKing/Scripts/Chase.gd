class_name Chase extends Node

@onready var rb : RigidBody2D = get_parent()

var agent : NavigationAgent2D

@export var speed   : float = 50
@export var canMove : bool = true

@export var target  : Target

func _ready() -> void:
    agent = NavigationAgent2D.new()
    get_parent().add_child.call_deferred(agent)
    
func _process(delta: float) -> void:
    if not canMove : return
    
    if not target : return
    var player : Node2D = target.Get()
    if not player : return
    
    agent.set_target_position(player.get_global_position())
    
    # Direction
    var dir : Vector2 = rb.get_global_position() \
                          .direction_to(agent.get_next_path_position())
                        
    # Velocity
    rb.set_linear_velocity(dir * speed)

func Halt() -> void:
    canMove = false
    rb.set_linear_velocity(Vector2.ZERO)
