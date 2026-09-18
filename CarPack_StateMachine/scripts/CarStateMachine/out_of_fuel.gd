class_name OutOfFuel
extends State

func enter(_msg := {}) -> void:
	print("Enter OUTOFFUEL state")
	%MuscleCar.disable_movement()
	
#class_name OutOfFuel
#extends State
#
#func enter(_msg := {}) -> void:
	#print("Enter OUTOFFUEL state")
	#%MuscleCar
