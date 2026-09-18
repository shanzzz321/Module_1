class_name Reverse
extends State

var fuel_consumption_rate = 1.0

func enter(_msg := {}) -> void:
	print("Enter REVERSE state")

func physics_update(delta: float) -> void:
	if %MuscleCar.linear_velocity.length() < 0.5:
		state_machine.transition_to("Idle")

	state_machine.fuel -= fuel_consumption_rate * delta
	print(state_machine.fuel)
