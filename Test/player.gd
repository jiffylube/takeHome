extends CharacterBody2D

@export var speed = 300
var health = 100

func _ready():
	set_health()

func set_health():	
	$health_bar.value = health

func _physics_process(delta):
	velocity.x = speed
	move_and_slide()


func _on_area_2d_body_entered(body):
	if body.is_in_group("enemy"):
		print("sword hit object")
		#velocity.x = 0
	#else:
		#print("enemy dead, moving on !")
		#velocity.x = 300
