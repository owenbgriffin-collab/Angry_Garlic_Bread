extends Node2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("Fire"):
		var ball :=preload("res://Ball.tscn").instantiate()
		add_sibling(ball)
		ball.global_position = global_position
		ball.apply_impulse(Vector2(1,-1)*500)
