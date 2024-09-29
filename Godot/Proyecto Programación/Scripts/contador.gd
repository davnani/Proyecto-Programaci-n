extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var contador = str(get_parent().get_child(1).get_child(2).get_meta('contador'))
	text = contador
