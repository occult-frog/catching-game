extends CharacterBody2D

var mango_count = 0

func _physics_process(delta):
	var input_direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_direction * 400
	move_and_slide()


func _on_pickup_area_area_entered(area):
	if area.is_in_group("mango") and !$HeldMango.visible:
		area.queue_free()
		$HeldMango.visible = true
		
	if area.is_in_group("basket") and $HeldMango.visible:
		$HeldMango.visible = false
		mango_count += 1
		$CanvasLayer/MangoCountDisplay.text = "mangoes: " + str(mango_count)
