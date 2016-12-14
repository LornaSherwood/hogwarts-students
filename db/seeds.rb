require_relative('../models/students')

require( 'pry' )

Student.delete_all()

student1 = Student.new({ 'first_name' => 'Harry', 'second_name' => 'Potter', 'house' => 'Gryffindor', 'age' => 12 })
student1.save()

student2 = Student.new({ 'first_name' => 'Hermione', 'second_name' => 'Granger', 'house' => 'Gryffindor', 'age' => 13 })
student2.save()

student3 = Student.new({ 'first_name' => 'Draco', 'second_name' => 'Malfoy', 'house' => 'Slytherin', 'age' => 12 })
student3.save()

student4 = Student.new({ 'first_name' => 'Cedric', 'second_name' => 'Diggory', 'house' => 'Hufflepuff', 'age' => 15 })
student4.save()


binding.pry
nil