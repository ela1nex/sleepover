extends Area2D

var float_time = 0.0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	float_time += delta
	position.y += sin(float_time * 2.0) * 0.1
