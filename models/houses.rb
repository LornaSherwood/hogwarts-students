require_relative("../db/sql_runner")

class House

  attr_reader :id
  attr_accessor :name, :logo

  def initialize( options )
    @id = nil || options['id'].to_i
    @name = options['name']
    @logo = options['logo']
  end


  def save()
    sql =  "INSERT INTO houses (name, logo)
            VALUES('#{name}', '#{logo}') 
            RETURNING id;"
    house = SqlRunner.run( sql ).first
    @id = house['id'].to_i
  end


  def self.delete_all
    sql = "DELETE FROM houses;"
    SqlRunner.run( sql )
  end

  def self.find_all
    sql = "SELECT * FROM houses;"
    houses = SqlRunner.run( sql )
    result = houses.map { |house| House.new( house ) }
    return result
  end

  def self.find(id)
    sql = "
      SELECT * FROM houses
      WHERE id = #{id};
    "
    house = SqlRunner.run( sql )
    result = House.new(house.first)
    return result

  end

end