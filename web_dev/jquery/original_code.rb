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
#----------this works: http://localhost:9393/about/Gwynne
get '/about/:person' do #---this is a route with a route parameter defined in it. Gwynne should be interpreted as the value of this variable.
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

# Defining the person = params[:person] first is more DRY, but the below works too!
get '/abouttt/:person' do
  "#{params[:person]} is a programmer, and #{params[:person]} is learning Sinatra."
end

# http://localhost:9393/Geoff/loves/Gwynne
# The route gets decomposed based on the definition of the route into a params hash that you can do something with
# It's Sinatra specific pattern matching
# In Sinatra you define the routes and anything with a colon in front of it, it will look for a dynamic part of that URL to fill in

get '/:person_1/loves/:person_2' do
  p params # the hash will print in the shotgun terminal console

  if params[:caps] # http://localhost:9393/Geoff/loves/Gwynne?how_much=a%20lot&caps=true
    "#{params[:person_1]} loves #{params["person_2"]} #{params["how_much"]}".upcase

  else # http://localhost:9393/Geoff/loves/Gwynne?how_much=a%20lot
    "#{params[:person_1]} loves #{params["person_2"]} #{params[:how_much]}"
    ## note it's irrelevant whether it's a symbol or a string because params is a hash with indifferent access (more on this below)

  end
end

  # http://localhost:9393/Geoff/loves/Gwynne?how_much=a%20lot
  # returns Geoff loves Gwynne a lot
  # The hash shows up in terminal shotgun {"how_much"=>"a lot", "person_1"=>"Geoff", "person_2"=>"Gwynne"}
  # Query params don't impact the route matching. So you could leave out the how_much=a lot in the URL and the route would still work.
  # params just doesn't have that key
  # So the hash shows up in terminal shotgun like this {"person_1"=>"Geoff", "person_2"=>"Gwynne"}

  # Sinatra is nice to us.
  # Params is a "hash with indifferent access" - you can either use symbols or strings to access the values of the hash.
  # So, this works too!!!
  # {params["person_1"]} loves #{params["person_2"]} #{params["how_much"]}
  # {params[:person_1} loves #{params[:person_2]} #{params[:how_much]}

  # Query params are good for **optionally** changing behavior. For example, you can make it so that if a query param is added to the URL ?caps=true then it will return in all caps... as in the above example


#=============================RELEASE 0=============================
#--------1. Write a contact route that displays an address

get '/contact' do
  "The address is 908 N. Elm Street."
end

# http://localhost:9393/contact
      # returns The address is 908 N. Elm Street.

#--------2. Write a /great_job route that can take a person's name as a query parameter (not a route parameter) and say "Good job, [person's name]!". If the query parameter is not present, the route simply says "Good job!"

get '/great_job' do
  if params[:name]
    "Good job, #{params[:name]}!"  # "Good job, #{params["name"]}!" would also work
  else
    "Good job!"
  end
end

# http://localhost:9393/great_job
        # returns Good job!
# http://localhost:9393/great_job?name=Gwynne
        # returns Good job, Gwynne!

#--------3. Write a route that uses route parameters to add two numbers and respond with the result. The data types are tricky here -- when will the data need to be (or arrive as) a string?

get '/math/:number_a/:number_b' do
  "#{(params[:number_a].to_i + params[:number_b].to_i)}"
end
# route http://localhost:9393/math/4/6 returns 10

#=============================RELEASE 1=============================

# 1. No, Sinatra is not the only web app library in Ruby! Rails and Grape are some other examples.

# 2. Nope! There are others, for example Postgresql, Datamapper, and Mongo.

# 3. Web stack refers to the set of components required for a web site. For example, in the exercises in Release 0, the web stack is Sinatra, SQLite3, and Shotgun.

#---------------------------------------------------------
# write a GET route that retrieves
# all student data

# get '/students' do
#   students = db.execute("SELECT * FROM students")
#   students.to_s
# end

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

# get '/students/:id' do
#   student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
#   student.to_s
# end