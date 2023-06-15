extends Area2D




func _on_raha_body_entered(body):
	queue_free()
	body.lisa_raha()
