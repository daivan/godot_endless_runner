extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$ScoreText.text = str(0)
	$HighScoreText.text = str(0)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$ScoreText.text = str(GameState.score)
	$HighScoreText.text = str(GameState.highscore)
	pass
