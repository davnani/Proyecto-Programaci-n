extends Area2D
var contador = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))

func _on_body_entered(body):
	if body.name == 'Manzana':
		contador+=1
		set_meta('contador',contador)