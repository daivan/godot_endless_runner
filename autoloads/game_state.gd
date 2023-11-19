extends Node

var highscore = 0
var score = 0

var isPlaying = false

func _process(delta):
	if (GameState.isPlaying == true):
		GameState.score = GameState.score + 1

func updateHighscore():
	if self.score > self.highscore:
		self.highscore = self.score

func restart_game():
	self.isPlaying = true
	self.score = 0
