# this script will provide examples of two basic programming concepts in GDScript:
# variables and control flow

# this first line can be ignored, it will be automatically generated for you by Godot
extends Node2D

# a variable is how information is represented in a program
# a variable has a name and contains a value
# a variable is declared using the keyword "var" followed by the name of the variable,
# an equals sign, and the variables value, like so:
var variable = 12
# giving a variable a value is not required, but you won't be able to use a variable until you
var some_other_variable

# variables can hold different kinds of data
# "variable" holds an integer, but it could also hold a number with decimals (called a "float")
# it could also hold text (a "String") or any other sorts of data
# a particular kind of data is called a "type" and many types exist, you can even create your own (which may be covered later)
# here are some more examples
var this_is_a_float = 2.5
var this_is_a_string = "hello there"
var this_is_a_bool = true # "bool" is short for boolean and represents true or false


# some variables can be made accesible from the editor using the keyword export
# the keyword export is followed by the variables type in parenthesis and a regular variable declaration
export(int) var exported_int
export(String) var exported_string = "default value"
# if you click this node ("gd_script_basics") in the editor you will see these two variables
# on the right side of the screen, you can see and change the values there


func _ready():
	if !visible:
		return
	print("---GDScript basics---")
	print("exported int: ", exported_int)
	print("exported string: ", exported_string)
	
	# another core concept of programming is "control flow"
	# control flow is how a computer goes through a program
	# it can be controlled by the programmer using "control flow statements"
	# the simplest control flow statement is the if statement
	# it executes the code inside the if statement if a certain condition is true
	# for example:
	if true:
		print("true is true")
	# with an if statement, we frequently use comparison operators
	# the first operator is the equality operator, it checks if two things are equal to each other
	# for example:
	if 1 == 0:
		print("1 is not equal to 0")
	# you may notice that is uses two equal signs, this it to avoid confusion with "="
	
	# the opposite of "==" is "!=" which is "not equal to"
	if 6.0 != 5.2:
		print("6.0 is not equal to 5.2")
		
	# the less than and greater than operators are the same as they are in math
	if 12 > 4:
		print("12 is greater than 4")
	if -5 < -3:
		print("-5 is less than -3")
	
	# operators representing less than or equal and greater than or equal use "<=" and ">="
	if 82 <= 82:
		print("82 is less than or equal to 82")
	
	# conditions like these can be combined using "and", "or", and "not"
	# these work like you would expect, "and" is true if both inputs are true
	# "or" is true if either input is true, and "not" is true if the input is false
	# note: if you are familiar with a programing language that uses "||", "&&" and "!", you can use them
	
	if !false:
		print("the opposite of false is true")
	
	if 16 > 4 or 5 > 7:
		print("even though 5 is not greater than 7, this statement still runs because 16 is greater than 4")
	if not (16 > 4 and 5 > 7):
		print("one of these statements is false, so the and condition is false, but the not makes it true")
	
	# commonly paired with the if statement, is the else statement, which runs if the if statement doesn't
	if false:
		print("this will never run")
	else:
		print("this will always run")
	
	# variables can be used anywhere where a value would be
	# for example:
	if exported_int == 6:
		print("good job!")
	else:
		print("how can you make the statement true?")
	# an if and else can be combined to make an else-if statement using the "elif" keyword
	# it runs if the first condition is false, but it's condition is true
	if this_is_a_float == 3.0:
		print("this won't run")
	elif this_is_a_float == 2.5:
		print("this will run")
	else:
		print("execution stops when it gets to a true statement, so this won't run")
	
	# another type of control flow statement is the loop
	# a loop is used to run code multiple times
	# the simplest loop is the while loop, it runs the code inside of it as long as the conditon is true
	# for example:
	while(true):
		print("the code inside this loop will keep running forever")
		# right now we are stuck inside this loop because the condition will always be true
		# but don't worry, we can "break" out
		break
		# a break statement is used to exit a control flow statement early
	# now that we are out of that, we can move on to the next loop
	# a for loop is used to go through every item in a container
	# temporary variable is created to hold each item as we go through them
	# and the keyword "in" is used between the variable and the container
	# for example:
	for i in range(10):
		print(i)
	# this prints the numbers 0 through 9, because range(10) creates a list containg those numbers
	# another useful control flow statement is "continue" this moves the loop to the next iteration
	# for example, this loop skips the number 4
	for i in range(10):
		if i == 4:
			continue
		print(i)

	# another very important concept in GDScript is the function
	# a function is a block of code that can be used in other places
	# functions can take values as inputs
	# "print" is a function, calling it causes text to appear in the console
	# you can even create your own functions with inputs and outputs
	# you use a function by writing it's name and then inputs in parenthesis (seperated by commas)
	print(example_function(7))

# functions are created by using the keyword "func", you then write the name of the function
# and all of its inputs (here, there is one input, called x)
func example_function(x):
	print("example function input: ", x)
	# the return keyword stops the function and outputs the value after it
	return x * 2
	
	print("unreachable code!")

# by combining these features you can do all sorts of different things
# the other tutorials cover additional GDScript features
# and how these programming concepts can work with other parts of Godot to make a complete game
