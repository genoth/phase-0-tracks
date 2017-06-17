# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true



# write a basic GET route
# add a query parameter GET /
#----------this web address works: http://localhost:4567/?name=Gwynne&age=31
#----------it also works w/out slash: http://localhost:4567?name=Gwynne&age=31
get '/' do
  "#{params[:name]} is #{params[:age]} years old blah."
end

# write a /contact route
#----------this works: http://localhost:4567/contact/?address=908%20North%20Elm
get '/contact/' do
  "The address is #{params[:address]}."
end

#----------this works: http://localhost:4567/about/Gwynne
get '/about/:person' do  #---this is a route with a route parameter defined in it. Gwynne should be interpreted as the value of this variable.
  person = params[:person]
  "#{person} is a programmer learning Sinatra."
end

# # write a /good_job route
#---------this works: http://localhost:4567/good_job/Gwynne
get '/good_job/:name' do
  name = params[:name]
  if name
  "Good job, #{name}!"
  else
  "Good job."
  end
end
