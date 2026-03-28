extends Area2D

var float_time = 0.0
func _process(delta: float) -> void:
	body_entered.connect(_on_body_entered)
	float_time += delta
	position.y += sin(float_time*PI/2) * 0.1
	
func _on_body_entered(body) -> void:
	if body.has_method("collect_whisper"):
		body.collect_whisper(self)
	
