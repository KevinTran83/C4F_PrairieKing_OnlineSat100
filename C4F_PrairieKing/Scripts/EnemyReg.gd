class_name EnemyReg extends Resource

var registry : Array[Node]

func Register(target : Node) -> void : registry.append(target)

func EliminateAll() -> void:
    for node : Node in registry : node.queue_free()
    registry = []
