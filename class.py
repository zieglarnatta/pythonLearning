class Student:
    def __init__(self, name, age, grade):
        self.name = name
        self.age = age
        self.grade = grade

    def get_grade(self):
        return self.grade
    
class Course:
    def __init__(self, name, max_students):
        self.name = name
        self.max_students = max_students
        self.students = []
    
    def add_student(self, student):
        if len(self.students) < self.max_students:
            self.students.append(student)
            return True
        return False
    
    def get_average_grade(self):
        value = 0
        for student in self.students:
            value += student.get_grade()
        return value / len(self.students)
    
s1 = Student("Tim", 19, 95)
s2 = Student("Bill", 19, 75)
s3 = Student("Jill", 19, 65)
course = Course("Science", 2)
print(course.add_student(s1))
print(course.add_student(s2))
print(course.add_student(s3))
print(course.get_average_grade())


class Pet():
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def show(self):
        print(f"I am {self.name} and I am {self.age} years old")

class Cat(Pet):
    def __init__(self, name, age, color):
        super().__init__(name, age) 
        self.color = color

    def speak(self):
        print("Meow")

    def show(self):
        print(f"I am {self.name}, a {self.color} cat, and I am {self.age} years old")

class Dog(Pet):
    def speak(self):
        print("Woof")

p = Pet("Fido", 10)
p.show()
c = Cat("Desi", 17, "tuxedo")
c.show()
c.speak()
d = Dog("Milo", 3)
d.show()
d.speak()

class Person():
    number_of_people = 0

    def __init__(self, name):
        self.name = name
        Person.add_person()
        

    @classmethod
    def number_of_people_(cls):
        return cls.number_of_people
    
    @classmethod
    def add_person(cls):
        cls.number_of_people += 1

        
P1 = Person("Tim")
P2 = Person("Jill")
print(Person.number_of_people)
# Person.number_of_people = 2
# print(Person.number_of_people)
print(P1.name)
print(P2.name)
print("Number of people: " + str(P1.number_of_people))