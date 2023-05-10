extends Area2D

@export var GROW_FACTOR : float = 0.2

func _on_body_entered(body):
	body.scale += GROW_FACTOR * Vector2.ONE

	queue_free()
