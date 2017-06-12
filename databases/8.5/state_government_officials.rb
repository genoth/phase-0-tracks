require 'sqlite3'

db = SQLite3::Database.new("state_officials.db")
db.results_as_hash = true

create_party_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS parties(
id INTEGER PRIMARY KEY,
name VARCHAR(255)
)
SQL

create_government_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS officials(
id INTEGER PRIMARY KEY,
name VARCHAR(255),
position VARCHAR(255),
state VARCHAR(255),
party_id INTEGER, FOREIGN KEY(party_id) REFERENCES parties(id)
)
SQL

db.execute(create_party_table_cmd)
db.execute(create_government_table_cmd)

#---------ATTORNEY GENERAL DATA-----------#
state_list = [
  'Alabama',
  'Alaska',
  'Arizona',
  'Arkansas',
  'California',
  'Colorado',
  'Connecticut',
  'Delaware',
  'District of Columbia',
  'Florida',
  'Georgia',
  'Hawaii',
  'Idaho',
  'Illinois',
  'Indiana',
  'Iowa',
  'Kansas',
  'Kentucky',
  'Louisiana',
  'Maine',
  'Maryland',
  'Massachusetts',
  'Michigan',
  'Minnesota',
  'Mississippi',
  'Missouri',
  'Montana',
  'Nebraska',
  'Nevada',
  'New Hampshire',
  'New Jersey',
  'New Mexico',
  'New York',
  'North Carolina',
  'North Dakota',
  'Ohio',
  'Oklahoma',
  'Oregon',
  'Pennsylvania',
  'Rhode Island',
  'South Carolina',
  'South Dakota',
  'Tennessee',
  'Texas',
  'Utah',
  'Vermont',
  'Virginia',
  'Washington',
  'West Virginia',
  'Wisconsin',
  'Wyoming'
]

name_list = [
  'Steve Marshall',
  'Jahna Lindemuth',
  'Mark Brnovich',
  'Leslie Rutledge',
  'Xavier Becerra',
  'Cynthia Coffman',
  'George Jepsen',
  'Matthew Denn',
  'Karl Racine',
  'Pam Bondi',
  'Chris Carr',
  'Doug Chin',
  'Lawrence Wasden',
  'Lisa Madigan',
  'Curtis Hill',
  'Tom Miller',
  'Derek Schmidt',
  'Andy Beshear',
  'Jeff Landry',
  'Janet Mills',
  'Brian Frosh',
  'Maura Healey',
  'Bill Schuette',
  'Lori Swanson',
  'Jim Hood',
  'Josh Hawley',
  'Tim Fox',
  'Doug Peterson',
  'Adam Laxalt',
  'Gordon MacDonald',
  'Christopher Porrino',
  'Hector Balderas',
  'Eric Schneiderman',
  'Josh Stein',
  'Wayne Stenehjem',
  'Mike DeWine',
  'Mike Hunter',
  'Ellen Rosenblum',
  'Josh Shapiro',
  'Peter Kilmartin',
  'Alan Wilson',
  'Marty Jackley',
  'Herbert Slatery',
  'Ken Paxton',
  'Sean Reyes',
  'T. J. Donovan',
  'Mark Herring',
  'Bob Ferguson',
  'Patrick Morrisey',
  'Brad Schimel',
  'Peter Michael'
]

party_id_list = [
  3,
  2,
  3,
  3,
  1,
  3,
  1,
  1,
  1,
  3,
  3,
  1,
  3,
  1,
  3,
  1,
  3,
  1,
  3,
  1,
  1,
  1,
  3,
  1,
  1,
  3,
  3,
  3,
  3,
  3,
  2,
  1,
  1,
  1,
  3,
  3,
  3,
  1,
  1,
  1,
  3,
  3,
  3,
  3,
  3,
  1,
  1,
  1,
  3,
  3,
  3
]

# # Create method to populate parties table using parties array
# parties = [
#   "Democratic",
#   "Independent",
#   "Republican"
# ]

# def add_party(db, name)
#   db.execute("INSERT INTO parties (name) VALUES (?)", [name])
# end

# # Method used to pfopulate parties table with id and party name
# parties.each do |x|
#   add_party(db, x)
# end

# Create method to populate officials table using arrays (name_list, state_list, and party_id_list)
def add_official(db, name, position, state, party_id)
  db.execute("INSERT INTO officials (name, position, state, party_id) VALUES (?, ?, ?, ?)", [name, position, state, party_id])
end

#--------- Method used to populate officials table with Attorney Generals from each state

# i = 0
# name_list.length.times do |i|
#   add_official(db, name_list[i], "Attorney General", state_list[i], party_id_list[i])
#   i = i + 1
# end


#------------------ GOVERNORS ------------------#
# State list is different from list used for attorney generals, because DC has no governor.
governor_name_list = [
  'Kay Ivey',
  'Bill Walker',
  'Doug Ducey',
  'Asa Hutchinson',
  'Jerry Brown',
  'John Hickenlooper',
  'Dannel Malloy',
  'John Carney',
  'Rick Scott',
  'Nathan Deal',
  'David Ige',
  'Butch Otter',
  'Bruce Rauner',
  'Eric Holcomb',
  'Kim Reynolds',
  'Sam Brownback',
  'Matt Bevin',
  'John Bel Edwards',
  'Paul LePage',
  'Larry Hogan',
  'Charlie Baker',
  'Rick Snyder',
  'Mark Dayton',
  'Phil Bryant',
  'Eric Greitens',
  'Steve Bullock',
  'Pete Ricketts',
  'Brian Sandoval',
  'Chris Sununu',
  'Chris Christie',
  'Susana Martinez',
  'Andrew Cuomo',
  'Roy Cooper',
  'Doug Burgum',
  'John Kasich',
  'Mary Fallin',
  'Kate Brown',
  'Tom Wolf',
  'Gina Raimondo',
  'Henry McMaster',
  'Dennis Daugaard',
  'Bill Haslam',
  'Greg Abbott',
  'Gary Herbert',
  'Phil Scott',
  'Terry McAuliffe',
  'Jay Inslee',
  'Jim Justice',
  'Scott Walker',
  'Matt Mead'
]
governor_party_id_list = [
  3,
  2,
  3,
  3,
  1,
  1,
  1,
  1,
  3,
  3,
  1,
  3,
  3,
  3,
  3,
  3,
  3,
  1,
  3,
  3,
  3,
  3,
  3,
  3,
  1,
  3,
  3,
  3,
  3,
  3,
  1,
  1,
  3,
  3,
  3,
  1,
  1,
  1,
  3,
  3,
  3,
  3,
  3,
  3,
  1,
  1,
  1,
  3,
  3]

  governor_state_list = [
    'Alabama',
    'Alaska',
    'Arizona',
    'Arkansas',
    'California',
    'Colorado',
    'Connecticut',
    'Delaware',
    'Florida',
    'Georgia',
    'Hawaii',
    'Idaho',
    'Illinois',
    'Indiana',
    'Iowa',
    'Kansas',
    'Kentucky',
    'Louisiana',
    'Maine',
    'Maryland',
    'Massachusetts',
    'Michigan',
    'Minnesota',
    'Mississippi',
    'Missouri',
    'Montana',
    'Nebraska',
    'Nevada',
    'New Hampshire',
    'New Jersey',
    'New Mexico',
    'New York',
    'North Carolina',
    'North Dakota',
    'Ohio',
    'Oklahoma',
    'Oregon',
    'Pennsylvania',
    'Rhode Island',
    'South Carolina',
    'South Dakota',
    'Tennessee',
    'Texas',
    'Utah',
    'Vermont',
    'Virginia',
    'Washington',
    'West Virginia',
    'Wisconsin',
    'Wyoming'
  ]

# Method to populate officials table using arrays (name_list, state_list, and party_id_list)
def add_official(db, name, position, state, party_id)
  db.execute("INSERT INTO officials (name, position, state, party_id) VALUES (?, ?, ?, ?)", [name, position, state, party_id])
end

# Method used to populate officials table with governors from each state
# i = 0
# governor_name_list.length.times do |i|
#   add_official(db, governor_name_list[i], "Governor", governor_state_list[i], governor_party_id_list[i])
#   i = i + 1
# end

