extends CharacterBody2D

@export var initial_ball_speed = 600
@export var speed_commulator = 50
var ball_speed = initial_ball_speed

var hitcounter = 0
var max_hitcounter = 12
var direction = Vector2()

func _ready():
	randomize()
	set_start_direction()
	
func set_start_direction():
	var random_x = 0
	
	if randi() % 10 < 5:
		random_x = 1
	else:
		random_x = -1
		
	direction = Vector2(random_x, randf_range(-1,1))
	direction = direction.normalized() * ball_speed


func _physics_process(delta):
	var collision = move_and_collide(direction * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())
		if collision.get_collider().is_in_group("paws"):
			var y = direction.y / 2 * collision.get_collider_velocity()
			
			direction = Vector2(direction.x,direction.y).normalized() * (ball_speed + hitcounter * speed_commulator)
			
			if hitcounter < max_hitcounter:
				hitcounter += 1
