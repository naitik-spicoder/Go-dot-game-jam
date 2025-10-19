extends Node2D

var i = true
func _on_obstacle_1_body_entered(_body: Node2D) -> void:
	$TileMap.clear_layer(1)
	if i:
		$AnimationPlayer.play("walls can do anything")
		i = false


func _on_boundry_body_entered(_body: Node2D) -> void:
	if _body == $CharacterBody2D:
		$Timer.start(2)
var j = true
func _on_obstacle_1_2_body_entered(body: Node2D) -> void:
	if body == $CharacterBody2D:
		$TileMap.clear_layer(2)
		if j:
			$AnimationPlayer.play("WHEN THINGS ARE")
			j = false
	pass # Replace with function body.

var k = true
func _on_fire_body_entered(body: Node2D) -> void:
	if body == $CharacterBody2D and k:
		$Timer.start(2)
		k = false
	pass # Replace with function body.



func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.
