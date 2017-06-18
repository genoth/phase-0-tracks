# require gems
require 'sinatra'
require 'sqlite3'
require 'shotgun'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/'
end

# add static resources

#==========================================

legislation_db = SQLite3::Database.new("legislation.db")
legislation_db.results_as_hash = true

# show legislation on the home page
get '/legislation' do
  @legislation = legislation_db.execute("SELECT * FROM legislation")
  erb :legislation
end

get '/legislation/new' do
  erb :new_legislation
end
