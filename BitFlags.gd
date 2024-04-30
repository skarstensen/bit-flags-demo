extends Node2D

enum Types { Grass, Water, Fire }

@export
var resource:BitFlagResource

func _ready():
	# Check if each flag is set
	if (resource.hasFlagSet(Types.Grass)):
		print("Type is Grass.")

	if (resource.hasFlagSet(Types.Water)):
		print("Type is Water.")
		
	if (resource.hasFlagSet(Types.Fire)):
		print("Type is Fire.")
	
	# Set Water flag & check it
	resource.setFlag(Types.Water)
	
	if (resource.hasFlagSet(Types.Water)):
		print("Type is Water.")
	
	# Clear Grass flag and check it
	resource.clearFlag(Types.Grass)
	
	if (!resource.hasFlagSet(Types.Grass)):
		print("Type is not Grass.")
