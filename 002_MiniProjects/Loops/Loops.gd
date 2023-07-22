extends Node2D

@export var spawn_count : int = 200
@export var SCREEN_WIDTH : int = 560
@export var SCREEN_HEIGHT : int = 320
var star_scene = preload("res://Loops/Star.tscn")

func _ready():
	for i in spawn_count:
		var star = star_scene.instantiate()
		add_child(star)
		
		star.position.x = randi_range(-SCREEN_WIDTH/2, SCREEN_WIDTH/2)
		star.position.y = randi_range(-SCREEN_HEIGHT/2, SCREEN_HEIGHT/2)
		
		var star_size = randf_range(0.5, 1.0)
		star.scale = Vector2(star_size, star_size)
