class_name Idle
extends State

func enter(_msg := {}) -> void:
	print("Enter IDLE state")
	%MuscleCar.enable_movement()
	
func physics_update(delta: float) -> void:
	if %MuscleCar.linear_velocity.length() > 0.5: 
		state_machine.transition_to("Forward")

#class_name Idle
#extends State
#
#func enter(_msg := {}) -> void:
	#print("Enter IDLE state")
	#%MuscleCar.enable_movement()
	#
#func physics_update(delta: float) -> void:
	#if %MuscleCar.linear_velocity.length > 0.5: 
		#state_machine.transition_to("Idle")
