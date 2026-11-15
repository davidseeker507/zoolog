extends CharacterBody2D

func moveplayer():
	position += Vector2(20,-80)

func _input(event:InputEvent) -> void:
		if event is InputEventKey and event.pressed and not event.echo:
			if event.keycode == KEY_ENTER:
				moveplayer()
