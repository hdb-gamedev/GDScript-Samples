# this script extends Node2D because it is on a Node2D node
extends Node2D

# the function "_ready" is called at the beginning of the game
func _ready():
	# this allows you to select what node you want to see output from
	if not visible:
		return
	
	print("---Array node output---")
	
	# an array is an ordered list of variables
	# you can create one by listing all the values inside square brackets like this:
	var array = [0, 12, 5, 2, "cheese"]
	# in many programming languages all of the items in an array have to be the same type
	# but GDScript allows for variables of different types to be in the same array
	
	# you can get the variables in an array by putting a number in square brackets after the array
	# for example
	print("-indexing-")
	print(array[1])
	# this is referred to as "indexing" the array, and the number is called the "index"
	# the first item in an array has an index of 0 NOT 1, so the above statement prints "12" not "0"
	
	# variables can also be used as the index, for example
	var index = 12 / 4
	print("-indexing with variable-")
	print(array[index])
	# this prints array[3] which is 2
	
	# you can add items on to the end of an array using the "append" function
	array.append(7)
	
	# you can get the size of the array by using the "len" function on it
	print("-length-")
	print(len(array))
	# this prints "6" because the array originally had 5 items, but we added one to it with "append"
	
	
	# because the array's indices start at 0, the last item is length - 1
	# for example, this prints the last item in the array: 7
	print("-last item-")
	print(array[len(array) - 1])
	
	# you can insert items into the middle of an array using the "insert" function
	# insert takes an index and a value
	array.insert(4, "swiss")
	
	# the value in the array at the index given becomes the value given in the "insert" function
	# the array used to look like this
	# [0, 12, 5, 2, "cheese"]
	# but now it looks like this
	# [0, 12, 5, 2, "swiss", cheese"]
	# we can verify this by using print
	print("-insert-")
	print(array[4]) # prints "swiss"
	print(array[5]) # prints "cheese"
	
	# there are a bunch of other functions you can use on arrays, they can be found online
	# or by ctrl-clicking the word "Array"
	
	# a for loop can be used to go through an array
	
	# this prints all the items in the array
	print("-items-")
	for item in array:
		print(item)
		
	# if you want to have the index as well, you can do this
	print("-item with indices-")
	for i in range(0, len(array)):
		print("index: ", i, " item: ", array[i])
