extends PathFollow



onready var stoptimer = $stop
onready var starttimer = $start
var runSpeed = 5
var stoprun = false

func _ready():
	starttimer.start()

func _process(delta: float) -> void:
	if stoprun == false:
		set_offset(get_offset() + runSpeed * delta)


func _on_stop_timeout():
	stoprun = false
	starttimer.start()
	


func _on_start_timeout():
	stoprun = true
	stoptimer.start()
