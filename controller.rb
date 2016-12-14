require( 'sinatra' )
require( 'sinatra/contrib/all' )

require_relative('./models/students')

#get all students (index)
get '/students' do
  @students = Student.find_all()
  erb(:index)
end

#enroll form
get '/students/new' do
  erb(:new)
end

# show student by id
get '/students/:id' do
  id = params[:id]
  @student = Student.find(id)
  erb(:show)
end


#enroll
post '/students' do 
  @student = Student.new( params )
  @student.save()
  erb(:create)
end
