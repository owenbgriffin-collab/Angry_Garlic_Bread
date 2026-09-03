extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("Fire"):
		var ball :=preload("res://Ball.tscn").instantiate()
		add_child(ball)
		ball.apply_impulse(Vector2(1,-1)*500)
