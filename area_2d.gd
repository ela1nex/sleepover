extends Area2D

var float_time = 0.0

func _process(delta: float) -> void:
	float_time += delta
	position.y += sin(float_time*PI/2) * 0.1
