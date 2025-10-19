extends Area2D



func _on_body_entered(body: Node2D) -> void:
	self.z_index = 10
	body.visible = false
	pass # Replace with function body.
