# require gems
require 'sinatra'
require 'sqlite3'
require 'shotgun'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# ---------------EXAMPLE OF A QUERY PARAMETER ?name=geoff&age=29
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with route parameters
# this works: http://localhost:4567/about/Gwynne
get '/about/:person' do #---this is a route with a route parameter defined in it. Gwynne should be interpreted as the value of this variable.
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/abouttt/:person' do
  "#{params[:person]} is a programmer, and #{params[:person]} is learning Sinatra."
end


# http://localhost:9393/Geoff/loves/Gwynne
# The route gets decomposed based on the definition of the route into a params hash that you can do something with
# It's Sinatra specific pattern matching
# In Sinatra you define the routes and anything with a colon in front of it, it will look for a dynamic part of that URL to fill in

get '/:person_1/loves/:person_2' do
  p params # the hash will print in the shotgun terminal console

  # http://localhost:9393/Geoff/loves/Gwynne?how_much=a%20lot
  # returns Geoff loves Gwynne a lot
  #  shows up in terminal shotgun
  # {"how_much"=>"a lot", "person_1"=>"Geoff", "person_2"=>"Gwynne"}
  # Query params don't impact the route matching. So you could leave out the how_much=a lot in the URL and the route would still work.
  # params just doesn't have that key
  # shows up in terminal shotgun - {"person_1"=>"Geoff", "person_2"=>"Gwynne"}

  # Sinatra is nice to us.
  # Params is a "hash with indifferent access" - you can either use symbols or strings to access the values of the hash.
  # So, this works too!!!   "#{params[:person_1]} loves #{params["person_2"]} #{params["how_much"]}"

  # Query params are good for optionally changing behavior. For example, you can make it so that if a query param is added to the URL ?caps=true then it will return in all caps... as the below example

  if params[:caps] # http://localhost:9393/Geoff/loves/Gwynne?how_much=a%20lot&caps=true
    "#{params[:person_1]} loves #{params["person_2"]} #{params["how_much"]}".upcase
  else # http://localhost:9393/Geoff/loves/Gwynne?how_much=a%20lot
    "#{params[:person_1]} loves #{params["person_2"]} #{params[:how_much]}" ## note it's irrelevant whether it's a symbol or a string.
  end

end

#===========================Release 0========================#

# 1.
get '/contact' do
  "The address is 908 N. Elm Street."
end

# http://localhost:9393/contact

# 2.
get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"
  else
    "Good job!"
  end
end

# http://localhost:9393/great_job?name=Gwynne Good job, Gwynne!
# http://localhost:9393/great_job returns Good job!

# 3.
get '/math/:number_a/:number_b' do
  "#{(params[:number_a]).to_i + (params[:number_b]).to_i}"
end

# http://localhost:9393/math/4/6
  # returns 10

#===========================Release 1========================#

# 1. No it's not! Rails and Grape are other web app libraries that can be used with Ruby.

# 2. There are also other databases such as Postgres and Mongo.

# 3. The term web stack refers to the components necessary to make a site run. For example, in Release 0, the web stack is Sinatra and SQLite3. I'm not sure if Shotgun counts as part of the web stack.

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end