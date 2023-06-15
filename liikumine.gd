extends KinematicBody2D

var motion = Vector2()

func _physics_process(delta):
	
	motion.y += 10
	
	if Input.is_action_pressed("ui_right") and not Input.is_action_pressed("ui_left"):
		motion.x = 550
		$Sprite.flip_h = false
	elif Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		motion.x = -550
		$Sprite.flip_h = true
	else:
		motion.x = 0
		$Sprite.flip_h = false #vaba valik
	move_and_slide(motion)
