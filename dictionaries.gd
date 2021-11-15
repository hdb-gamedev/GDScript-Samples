extends Node2D


func _ready():
	if !visible:
		return

	# a dictionary takes an input (called a "key") to get an output (called a "value")
	# a "dictionary literal" can be created by using key value pairs(with a colon between) 
	# seperated by commas and surrounded by curly brackets
	# for example:
	var dictionary = {"mac": "cheese", "spaghetti" : "meatballs"}
	
	# you can get a value out of dictionary by putting its key in square brackets after it
	# for example:
	print(dictionary["mac"]) # prints "cheese"
	# you can also use the "get" function
	print(dictionary.get("mac")) # also prints "cheese"
	# of course variables can be used as the index as well
	var key = "spaghetti"
	print(dictionary[key]) # prints "meatballs"
	
	# the "has" function tells you whether a dictionary contains a particular key
	# for example:
	print(dictionary.has("mac")) # prints "true"
	
	# you can add an element to a dictionary using square brackets
	# for example:
	dictionary["peanut butter"] = "jelly"
	
	# you can also reassign existing values that way
	dictionary["spaghetti"] = "bolognese"
	
	# the "size" function tells you how many items are in a dictionary
	print(dictionary.size()) # prints "3"
	
	# you can get all of the keys in a dictionary using the "keys" function
	print(dictionary.keys())
	
	# you can get all of the values in a dictionary using the "values" function
	print(dictionary.values())
