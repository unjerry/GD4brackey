extends Area2D

@onready var timer = $Timer

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_body_entered(_body):
	print("you die") # Replace with function body.
	Engine.time_scale=0.3
	_body.get_node("CollisionShape2D").queue_free()
	timer.start()
	


func _on_timer_timeout():
	Engine.time_scale=1
	get_tree().reload_current_scene() # Replace with function body.
