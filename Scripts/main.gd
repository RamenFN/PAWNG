extends Node2D

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	new_game()

func new_game():
	score = 0
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func game_over():
	pass

func _on_end_game_body_exited(body):
	game_over()

