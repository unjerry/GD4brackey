extends Node2D

var direction=1
var velocity=60
@onready var animated_sprite_2d = $AnimatedSprite2D
@onready var ray_cast_r = $RayCastR
@onready var ray_cast_l = $RayCastL

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if ray_cast_l.is_colliding():
		direction=1;
		animated_sprite_2d.flip_h=false
	if ray_cast_r.is_colliding():
		direction=-1;
		animated_sprite_2d.flip_h=true
	position.x+=direction*velocity*_delta
