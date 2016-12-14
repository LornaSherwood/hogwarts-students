require_relative('../models/students')
require_relative('../models/houses')

require( 'pry' )

Student.delete_all()
House.delete_all()

student1 = Student.new({ 'first_name' => 'Harry', 'second_name' => 'Potter', 'house' => 'Gryffindor', 'age' => 12 })
student1.save()

student2 = Student.new({ 'first_name' => 'Hermione', 'second_name' => 'Granger', 'house' => 'Gryffindor', 'age' => 13 })
student2.save()

student3 = Student.new({ 'first_name' => 'Draco', 'second_name' => 'Malfoy', 'house' => 'Slytherin', 'age' => 12 })
student3.save()

student4 = Student.new({ 'first_name' => 'Cedric', 'second_name' => 'Diggory', 'house' => 'Hufflepuff', 'age' => 15 })
student4.save()

house1 = House.new({'name' => 'Gryffindor', 'logo' => 'http://vignette4.wikia.nocookie.net/harrypotter/images/3/37/Gryffindor_Crest.jpg/revision/latest?cb=20120317101541'})
house1.save
house2 = House.new({'name' => 'Slytherin', 'logo' => 'http://images4.fanpop.com/image/photos/17300000/Slytherin-Crest-slytherin-17304074-250-284.jpg'})
house2.save
house3 = House.new({'name' => 'Hufflepuff', 'logo' => 'https://shop.universalorlando.com/images/P_PINTRADING_Souvenirs_Pins_HarryPotter_Souvenirs_HufflepuffCrestMedallionPin_1230702.JPG'})
house3.save
house4 = House.new({'name' => 'Ravenclaw', 'logo' => 'http://vignette3.wikia.nocookie.net/harrypotter/images/b/bf/Ravenclaw_Crest.jpg/revision/latest?cb=20110518074446'})
house4.save


binding.pry
nil