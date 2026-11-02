extends Area2D

@onready var sprite2d = $Sprite2D
@onready var collisionbox = $CollisionShape2D
@onready var respawntimer = $RespawnTimer

func disappear():
	sprite2d.visible=false
	collisionbox.disabled=true
	respawntimer.start()

func _on_respawn_timer_timeout():
	sprite2d.visible=true
	collisionbox.disabled=false
