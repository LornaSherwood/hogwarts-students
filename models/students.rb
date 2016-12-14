require_relative("../db/sql_runner")

class Student

  attr_reader :id
  attr_accessor :first_name, :second_name, :house, :age

  def initialize( options )
    @id = nil || options['id'].to_i
    @first_name = options['first_name']
    @second_name = options['second_name']
    @house = options['house']
    @age = options['age'].to_i
  end


  def save()
    sql =  "INSERT INTO students (first_name, second_name, house, age)
            VALUES('#{first_name}', '#{second_name}', '#{house}', #{age}) 
            RETURNING id;"
    student = SqlRunner.run( sql ).first
    @id = student['id'].to_i
  end

  def self.delete_all
    sql = "DELETE FROM students;"
    SqlRunner.run( sql )
  end

  def self.find_all
    sql = "SELECT * FROM students;"
    students = SqlRunner.run( sql )
    result = students.map { |student| Student.new( student ) }
    return result
  end

  def self.find(id)
    sql = "
      SELECT * FROM students
      WHERE id = #{id};
    "
    student = SqlRunner.run( sql )
    result = Student.new(student.first)
    return result

  end


  


end