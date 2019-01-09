extends Sprite

signal move_completed

var grid_pos = Vector2()

func grid_to_isometric(grid_x, grid_y):
	var x = 250 + grid_x * 50 - grid_y * 50
	var y = grid_x * 25 + grid_y * 25
	return Vector2(x, y)

func move_to(x, y):
	if x != grid_pos.x:
		$Tween.interpolate_property(self, "position", position, grid_to_isometric(x, grid_pos.y), 0.5, Tween.TRANS_SINE, Tween.EASE_OUT)
		$Tween.start()
		yield($Tween, "tween_completed")
	if y != grid_pos.y:
		$Tween.interpolate_property(self, "position", position, grid_to_isometric(x, y), 0.5, Tween.TRANS_SINE, Tween.EASE_OUT)
		$Tween.start()
		yield($Tween, "tween_completed")
	grid_pos.x = x
	grid_pos.y = y

	emit_signal("move_completed")
