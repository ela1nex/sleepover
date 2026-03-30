extends Area2D


var float_time = 0.0

func _ready() -> void:
	position.y -= 5
	body_entered.connect(_on_body_entered)
	
func _process(delta: float) -> void:
	float_time += delta
	position.y += sin(float_time*PI/2) * 0.1
	
func _on_body_entered(body) -> void:
	if body.has_method("collect_whisper"):
		if body.collect_whisper(self):
			self.queue_free()
