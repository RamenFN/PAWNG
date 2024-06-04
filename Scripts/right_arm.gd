extends CharacterBody2D

@export var speed = 300

func get_input():
	var input_direction = Vector2(Input.get_axis("Right_Paw_MoveLeft", "Right_Paw_MoveRight"), 0) * speed
	velocity.x = input_direction.x  

func _physics_process(delta):
	get_input()
	move_and_slide()
