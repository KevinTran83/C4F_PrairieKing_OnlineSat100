class_name Shoot extends Node

@export var equipped     : Firearm
@export var hand       : Node2D
@export var muzzleOffset : float = 5

var timer : Timer

func _ready() -> void:
    timer = Timer.new()
    add_child(timer)
    Equip(equipped)
    timer.timeout.connect(SpawnProjectile)
    
func Equip(newWeapon : Firearm) -> void:
    if not newWeapon : return
    timer.set_wait_time(newWeapon.SpawnTime())

func SpawnProjectile() -> void:
    if not equipped : return
    var proj : RigidBody2D = equipped.projectile.instantiate()
    get_tree().get_root().get_node("Main").get_node("Level").add_child(proj)
    proj.set_global_position ( hand.get_global_position()
                             + Vector2.RIGHT.rotated(hand.get_global_rotation()) * muzzleOffset
                             )
    var projNode : Projectile = proj.get_node("Projectile")
    if not projNode : return
    projNode.Fire(hand.get_global_rotation())

func PullTrigger(angle : float) -> void:
    hand.set_global_rotation(angle);
    timer.start()
    
func HoldFire() -> void : timer.stop();
