extends Area2D

signal bullet_hit(mob)

const velocity = 200.0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float):
	position.y -= velocity * delta


func _on_body_entered(body):
	hide()
	bullet_hit.emit(body)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()


func _on_bullet_hit(mob: Variant) -> void:
	mob.hide()
	#score += 1
	#$HUD.update_score(score)
