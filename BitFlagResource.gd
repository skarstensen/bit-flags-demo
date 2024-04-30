extends Resource

class_name BitFlagResource

@export_flags("Grass", "Water", "Fire")
var types

func hasFlagSet(flag) -> bool:
	return types & (1 << flag) != 0


func setFlag(flag):
	types |= 1 << flag 		# This also works: types = types | (1 << flag)


func clearFlag(flag):
	types ^= 1 << flag
