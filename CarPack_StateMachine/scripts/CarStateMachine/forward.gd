class_name Forward
extends State

var fuel_consumption_rate = 1.0

func enter(_msg := {}) -> void:
	print("Enter FORWARD state")
	
func physics_update(delta: float) -> void:
	if %MuscleCar.linear_velocity.length() < 0.5:
		state_machine.transition_to("Idle")

	state_machine.fuel -= fuel_consumption_rate * delta
	print(state_machine.fuel)
	
#func physics_update(delta: float) -> void:
	#if %MuscleCar.linear_velocity.length < 0.5: #MuscleCar
		#state_machine.transition_to("Forward")
		#
	#state_machine -= fuel_consumption_rate * delta
	#print(state_machine.fuel)
