require 'sqlite3'

db = SQLite3::Database.new("state_officials.db")
db.results_as_hash = true

create_state_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS states(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
  )
SQL

create_party_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS parties(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    )
SQL

create_government_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS government_officials(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    position VARCHAR(255),
    party_id INTEGER, FOREIGN KEY(party_id) REFERENCES parties(id),
    state_id INTEGER, FOREIGN KEY(state_id) REFERENCES states(id)
  )
SQL

db.execute(create_state_table_cmd)
db.execute(create_party_table_cmd)
db.execute(create_government_table_cmd)

states = [
  'Alabama'
  'Alaska'
  'Arizona'
  'Arkansas'
  'California'
  'Colorado'
  'Connecticut'
  'Delaware'
  'District of Columbia'
  'Florida'
  'Georgia'
  'Hawaii'
  'Idaho'
  'Illinois'
  'Indiana'
  'Iowa'
  'Kansas'
  'Kentucky'
  'Louisiana'
  'Maine'
  'Maryland'
  'Massachusetts'
  'Michigan'
  'Minnesota'
  'Mississippi'
  'Missouri'
  'Montana'
  'Nebraska'
  'Nevada'
  'New Hampshire'
  'New Jersey'
  'New Mexico'
  'New York'
  'North Carolina'
  'North Dakota'
  'Ohio'
  'Oklahoma'
  'Oregon'
  'Pennsylvania'
  'Rhode Island'
  'South Carolina'
  'South Dakota'
  'Tennessee'
  'Texas'
  'Utah'
  'Vermont'
  'Virginia'
  'Washington'
  'West Virginia'
  'Wisconsin'
  'Wyoming'
]

def add_state(db, name)
  db.execute("INSERT INTO states (name) VALUES (?)", [name])
end

states.each do |name|
  add_state(db, name)
end

states = db.execute("SELECT * FROM states")
states.each do |state|
  p state
end
