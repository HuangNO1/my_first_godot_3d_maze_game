extends Control

signal retried

onready var time : = $CenterContainer/Column/Time

func initialize(total_playtime: float) -> void:
	var minutes: String = str(int(total_playtime / 60.0))
	var seconds: String = str(int(fmod(total_playtime, 60.0)))
	var time_text: = "Total time: %s m %s s" % [minutes, seconds]
	time.text = time_text

	show()

func _on_TryAgain_pressed():
	emit_signal("retried")


func _on_Exit_pressed():
	get_tree().quit()
