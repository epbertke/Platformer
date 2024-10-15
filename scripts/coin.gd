class_name Coin extends Area2D
var controller 

func _ready():
	#controller = $"/root/GameController"
		#accessing this way stopped working when I organized my scenes/scripts into folders
	controller = GameController

func _on_body_entered(body):
	controller.coin_collected()
	$"../CoinCount".text = str(controller.score)
	queue_free()

func update_score():
	$"../CoinCount".text = str(0)
