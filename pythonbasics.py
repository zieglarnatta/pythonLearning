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
strings.append("John")
strings.append("Eric")
strings.append("Jessica")

# print out the second name. Note the array index starts with 0
second_name = strings(1)


# this code should write out the filled arrays and the second name in the names list (Eric).
print(numbers)
print(strings)
print("The second name on the names list is %s" % second_name)
