extends Control

# Export to Android to test since mouseclicks aren't registered as touch in this project ig

func _physics_process(delta): # just_pressed and just_released doesnt work with physics process
	if Input.is_action_just_pressed("ui_up"): # Doesnt Work
		$Label.text = "Just_Pressed"
	if Input.is_action_just_released("ui_up"): # Doesnt Work
		$Label.text = "Just_Released"
	if Input.is_action_pressed("ui_left"): # Works
		$Label.text = "Pressed"
		

#func _process(delta): # But works on process so i guess its a special case in physics_process
#	if Input.is_action_just_pressed("ui_up"): # Works
#		$Label.text = "Just_Pressed"
#	if Input.is_action_just_released("ui_up"): # Works
#		$Label.text = "Just_Released"
#	if Input.is_action_pressed("ui_left"): # Works
#		$Label.text = "Pressed"
