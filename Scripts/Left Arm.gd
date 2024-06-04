extends CharacterBody2D

@export var speed = 300

var original_y = 0

func _ready():
	original_y = position.y

	
func get_input():
	var input_direction = Vector2(Input.get_axis("Left_Paw_MoveLeft", "Left_Paw_MoveRight"), 0) * speed
	velocity.x = input_direction.x  
	

func _physics_process(delta):
	get_input()
	move_and_slide()
	keep_player_in_place()

	
func keep_player_in_place():
	position.y = original_y
