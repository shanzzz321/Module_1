class_name Off
extends State

func enter(_msg := {}) -> void:
	print("Enter OFF state")
	%Label3D.visible = true
	%MuscleCar.disable_movement() # MuscleCar
	
func handle_input(_event: InputEvent):
	if Input.is_action_just_pressed("Start"):
		state_machine.transition_to("Idle")
	
func exit() -> void:
	%Label3D.visible = false
	%CarStartAudio.play()
	%Smoke.emitting = true
