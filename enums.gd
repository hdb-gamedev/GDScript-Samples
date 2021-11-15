extends Node2D

# "enum" is short for enumerated, and it allows you to create an "enumerated type"
# an enumerated type is a data type which has a fixed number of named values

# an enum is declared with the keyword "enum" followed by a type name
# for example:
enum Direction{
	NORTH,
	SOUTH,
	EAST,
	WEST,
}
# by convention the values of an enum are in all caps and underscores are used for spaces
# for example: "FIRST_VALUE"
# this is called "snake case"

# enum values can also be assigned to arbitrary integer values
enum PlayerClass{
	WIZARD = 15,
	FIGHTER = 1,
	ROGUE = -4,
}

func _ready():
	if !visible:
		return
	# to get a value of an enum, you put the enum, a period, then the name of the value
	# for example:
	var my_direction = Direction.NORTH;
	if my_direction == Direction.SOUTH:
		print("I'm going south")
	else:
		print("I'm not going south")
		
	# enum values can also be compared to their integer values
	if PlayerClass.WIZARD == 15:
		print("PlayerClass.WIZARD has the value 15")
	# enums are very simple, but they can greatly simplify your code
	# you should use them whenever you have a variable that can take on a small fixed set of values
