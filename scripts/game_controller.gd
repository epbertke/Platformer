class_name Controller extends Node
@export var score : int = 0
@onready var label : Label 
var level = 1

func _ready():
	score = 0

func coin_collected():
	score += 1
	if score > 5:
		level += 1
		score = 0
		switch_scene()

func switch_scene():
	if level == 2:
		get_tree().change_scene_to_file("res://scenes/Level2.tscn")
		
	if level == 3:
		get_tree().change_scene_to_file("res://scenes/Level3.tscn")
	
	if level == 4:
		get_tree().quit()	
