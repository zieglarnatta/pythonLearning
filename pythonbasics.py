# Date: August 27 2018
# Version: 1.0.0 Initial version
# Author: Roy Yap

#declare an empty numbers array / list
numbers = []

#declare an empty strings array / list
strings = []

#Assign names list array with 3 string items
names = ["John", "Eric", "Jessica"]

# write your code here
# use the append method to add 1,2 and 3 into the numbers array / List
numbers.append(1)
numbers.append(2)
numbers.append(3)

# use the append method to add the names to strings array / List
strings.append("Hello")
strings.append("World")

# print out the second name. Note the array index starts with 0
second_name = names[1]


# this code should write out the filled arrays and the second name in the names list (Eric).
print(numbers)
print(strings)
print("The second name on the names list is %s" % second_name)

# code academy materials:
# updating variables

january_to_june_rainfall = 1.93 + 0.71 + 3.53 + 3.41 + 3.69 + 4.50
annual_rainfall = january_to_june_rainfall

july_rainfall = 1.05
annual_rainfall += july_rainfall

august_rainfall = 4.91
annual_rainfall += august_rainfall

september_rainfall = 5.16
#my code here
annual_rainfall += september_rainfall

october_rainfall = 7.20
annual_rainfall += october_rainfall

november_rainfall = 5.06

annual_rainfall += november_rainfall

december_rainfall = 4.06
annual_rainfall += december_rainfall
print (annual_rainfall)


# float numbers
cucumbers = 100
num_people = 6
whole_cucumbers_per_person = cucumbers / num_people
# print the quotient result
print (whole_cucumbers_per_person)

# calculate and print float number results
float_cucumbers_per_person = float(cucumbers) / num_people
print (float_cucumbers_per_person)


# multi line strings using trple quotes
haiku = """The old pond,
A frog jumps in:
Plop!"""

""" and this is a comment
"""

#adding my own print statement to see the haiku get printed out

print (haiku)

# boolean exercise
# Hi! I'm Maria and I live in script.py.
# I'm an expert Python coder.
# I'm 21 years old and I plan to program cool stuff forever.

age_is_12 = False

name_is_maria = True

# converting integers, float and strings oh myy!

float_1 = 0.25
float_2 = 40.0

product = float(float_1) * float(float_2)

big_string = 'The product was ' + str(product)

# my own print statement to see the results
print ('If float_1 was ' + str (float_1) + ' and float_2 was ' + str (float_2) )
print (big_string)

#on my own, misinterpreting the expected results, I could have transformed this into a string from the integer 10
X = int(product)
another_big_string = ('If I converted it to an integer and then into a string, then the product was ' + str(X))
print(another_big_string)

# Syntax end practise
skill_completed = 'Python Syntax'
exercises_completed = 13
#The amount of points for each exercise may change, because points don't exist yet
points_per_exercise = 5
point_total = 100
point_total += exercises_completed * points_per_exercise

# on my own print out the current point_total result
print (point_total)


print ("I got "+ str(point_total) +" points!")
# on my own:
X = str(point_total)
print ('I got ' + X + ' points!')

# The string below is broken. Fix it using the escape backslash!

'This isn\'t flying, this is falling with style!'
# on my own, print using literal / python 2's double quotes
print ("This isn't flying, this is falling with style!")

# access by index, start counting with 0 as the first index entry
"""So if you wanted "Y", you could just type
PYTHON"[1] (always start counting from 0!)
"""
fifth_letter = "MONTY"[4]

print fifth_letter
# string lengths

parrot = ('Norwegian Blue')
# on my own, notifying what will be printed
print ('Printing out the length of the parrot variable which contains: ' + str(parrot))
print (len(parrot))

# lower case string
parrot = "Norwegian Blue"
# on my own
print ('Printing out the lowercase of the parrot variable which contains: ' + str(parrot))
print (parrot.lower())

# upper case string
parrot = "norwegian blue"
# on my own
print ('Printing out the uppercase of the parrot variable which contains: ' + str(parrot))
print (parrot.upper())

# practice diffrentiating between upper & lowercase which only owrks as a dot operator, while len() and str() works on any data types
ministry = "The Ministry of Silly Walks"
# on my own
print ('show the length of ministry variable which contains: ' + str(ministry))
print (len(ministry))
#on my own
print ('uppercase conversion of the above mentioned ministry variable:')
print (ministry.upper())

# concatenating string with variable values using %
string_1 = "Camelot"
string_2 = "place"

print "Let's not go to %s. 'Tis a silly %s." % (string_1, string_2)

# gaining raw input from console snd concatenating string from variable value
quest = raw_input("What is your quest? ")
name = raw_input("What is your name? ")
color = raw_input("What is your favorite color? ")

print "Ah, so your name is %s, your quest is %s, " \
"and your favorite color is %s." % (name, quest, color)

# date & time
from datetime import datetime
now = datetime.now()
print (now) #this gives the full date and time along with fractions of seconds

#date time extracting information:
from datetime import datetime
now = datetime.now()
print (now)
print (now.year)
print (now.month)
print (now.day)
# on my own:
print (now.hour)
print (now.minute)
print (now.second)
print (now.microsecond)

# use spacing along with displaying the variable's value
from datetime import datetime
now = datetime.now()
print '%02d/%02d/%04d' % (now.month, now.day, now.year)
