extends Area2D

func _ready() -> void:
	$Block.visible = false

func _on_body_entered(body: Node2D) -> void:
	if body == $"../CharacterBody2D":
		$Block.visible = true
	print(body)
	pass # Replace with function body.
