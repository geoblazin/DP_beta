class_name Jimbly extends CharacterBody2D

var cardinal_direction : Vector2 = Vector2.DOWN
var direction : Vector2 = Vector2.ZERO
var move_speed : float = 100.0

var state : String = "idle"

@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var sprite : Sprite2D = $Sprite2D


func _ready():
	pass
	
	
func _process(delta):
	
	direction.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direction.y = Input.get_action_strength("hide") - Input.get_action_strength("jump")
	
	velocity = direction * move_speed
	
	UpdateAnimation()
	
	pass
	
func _physics_process(delta):
	move_and_slide()



func SetDirection() -> bool :
	
	return true
	
func SetState() -> bool :
	
	return true
	
func UpdateAnimation() -> void : 
	animation_player.play("idle")
	pass
	
