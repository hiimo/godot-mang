extends KinematicBody2D

const MAX_LIVES = 3  # Maximum number of lives

var currentLives = MAX_LIVES
var coinCount = 0
var startPosition = Vector2(0, 0)

func _ready():
	startPosition = position

func _physics_process(delta):
	# Example: Check if the player falls off the screen
	if position.y > get_viewport_rect().size.y:
		fallDown()

func fallDown():
	if currentLives > 0:
		currentLives -= 1
		updateLivesUI()
		respawn()
	else:
		gameover()

func respawn():
	position = startPosition

func collectCoin():
	coinCount += 1
	updateCoinUI()

	if coinCount >= 2:
		gameWon()

func updateLivesUI():
	# Implement your UI update logic here
	print("Current Lives: ", currentLives)

func updateCoinUI():
	# Implement your UI update logic here
	print("Coins: ", coinCount)

func gameover():
	# Implement your game over logic here
	print("Game Over!")
	# Example: Reload the level or show a game over screen
	# get_tree().reload_current_scene() or show_game_over_screen()

func gameWon():
	# Implement your game won logic here
	print("You won the game!")
	# Example: Show a victory screen or move to the next level
	# show_victory_screen() or load_next_level()
