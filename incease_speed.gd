extends Button

func _ready():
	var speedbutton = $"."
	speedbutton.pressed.connect(increaseSpeed)

func increaseSpeed():
	if impvariables.mango_count>=5:
		impvariables.speed += 20
		impvariables.mango_count -= 5
		$"../Player/CanvasLayer/MangoCountDisplay".text = "mangoes: " + str(impvariables.mango_count)
		$"../Player/CanvasLayer/SpeedDisplay".text = "speed: " + str(impvariables.speed)
