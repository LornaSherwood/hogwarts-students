require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('./models/students')

#get all students (index)
get '/students' do
  @students = Student.find_all()
  erb(:index)
end