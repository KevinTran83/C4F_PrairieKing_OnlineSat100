extends Node

@export var speed : float = 250

@onready var character : CharacterBody2D = get_parent()
@onready var canMove : bool = true

func _process(delta: float) -> void:
    if not canMove : return
    var movementVector = Vector2.ZERO
    movementVector.x += 1 if Input.is_action_pressed("MoveRight") else 0
    movementVector.x -= 1 if Input.is_action_pressed("MoveLeft" ) else 0
    movementVector.y -= 1 if Input.is_action_pressed("MoveUp"   ) else 0
    movementVector.y += 1 if Input.is_action_pressed("MoveDown" ) else 0
    
    character.set_velocity(movementVector * speed)
    character.move_and_slide()

func Halt() -> void:
    canMove = false
