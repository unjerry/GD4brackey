extends Node

var score=0
@onready var scorelable = $scorelable

func add_score():
	score+=1
	scorelable.text="you collected {id} coin".format({"id":score})
	print(score)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
