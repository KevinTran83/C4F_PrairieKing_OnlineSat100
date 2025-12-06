class_name EnemyReg extends Resource

var registry : Array[Node]

func Register(target : Node) -> void : registry.append(target)

func EliminateAll() -> void:
    for node : Node in registry:
        if not is_instance_valid(node) : continue
        var hp : HP = node.get_node("HP")
        if not hp : continue
        hp.Kill()
    registry = []
