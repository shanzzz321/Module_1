extends VehicleBody3D

@export var engine_power: float = 1200.0
@export var brake_power: float = 35.0

@export var max_steering_angle: float = 0.5
@export var steering_speed: float = 2.5

func _process(delta):
	if Input.is_action_just_pressed("Camera1"):
		$Camera1.current = true
	if Input.is_action_just_pressed("Camera2"):
		$Camera2.current = true


func _physics_process(delta):

	var throttle := Input.get_axis("down", "up")
	var steering_input := Input.get_axis("right", "left")

	# Acceleration / reverse
	engine_force = throttle * engine_power

	# Steering
	var target_steering := steering_input * max_steering_angle
	steering = move_toward(
		steering,
		target_steering,
		steering_speed * delta
	)

	# Braking
	if Input.is_action_pressed("down"):
		brake = brake_power
	else:
		brake = 0.0

var last_engine_power = 0.0

func disable_movement():
	last_engine_power = engine_power
	engine_power = 0.0
	
func enable_movement():
	engine_power = last_engine_power
	
#extends VehicleBody3D
#
#@export var engine_power: float = 1200.0
#@export var brake_power: float = 35.0
#
#@export var max_steering_angle: float = 0.5
#@export var steering_speed: float = 2.5
#
#func _update(delta):
	#if Input.is_action_just_pressed("Camera1"):
		#$Camera1.current = true
	#if Input.is_action_just_pressed("Camera2"):
		#$Camera2.current = true
#
#
#func _physics_process(delta):
#
	#var throttle := Input.get_axis("down", "up")
	#var steering_input := Input.get_axis("right", "left")
#
	## Acceleration / reverse
	#engine_force = throttle * engine_power
#
	## Steering
	#var target_steering := steering_input * max_steering_angle
	#steering = move_toward(
		#steering,
		#target_steering,
		#steering_speed * delta
	#)
#
	## Braking
	#if Input.is_action_pressed("down"):
		#brake = brake_power
	#else:
		#brake = 0.0
#
#var last_engine_power = 0.0
#
#func disable_movement():
	#last_engine_power = engine_power
	#engine_power = 0.0
	#
#func enable_movement():
	#engine_power = last_engine_power
