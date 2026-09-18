class_name CarStateMachine
extends StateMachine

var fuel: float = 100.0

func _process(delta: float) -> void:
	# Any state transition
	if fuel < 0 and state.name != "OutOfFuel":
		transition_to("OutOfFuel")
	super(delta)
