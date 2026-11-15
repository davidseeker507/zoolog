extends Node2D

func movebackground(score_change):
	$Backgrounds.position += Vector2(0,-score_change)

func _input(event:InputEvent) -> void:
		if event is InputEventKey and event.pressed and not event.echo:
			if event.keycode == KEY_ENTER:
				var answer = $TextEdit.text
				$TextEdit.clear()
				if answer == questions [qindex][1]:
					movebackground(-900)
					qindex += 1
					$Label.text = questions [qindex][0]
				else:
					movebackground(900)
					qindex += 1
					$Label.text = questions [qindex][0]
var questions = [["What is 2 + 2?","4"],["what is 6 * 6?", "36"],["Who painted the Mona Lisa","da vinci"]]
var qindex = 0
