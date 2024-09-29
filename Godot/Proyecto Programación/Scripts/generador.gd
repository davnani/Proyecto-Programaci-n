extends Node2D
var timer = 0
var manzana = preload('res://Scenes/manzana.tscn')
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	timer+=1*_delta
	if timer >= 2:
		timer = 0
		var instancia = manzana.instantiate()
		instancia.position = Vector2(randf_range(0,1152),-9)
		add_child(instancia)
		
	
