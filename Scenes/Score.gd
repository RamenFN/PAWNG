extends Label

var score = -1

func _process(delta):
	if score > 0:
		self.text = str(score)
	else:
		self.text = "0"


func _on_score_body_entered(body):
	score += 1
