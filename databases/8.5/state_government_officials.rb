require 'sqlite3'

db = SQLite3::Database.new("state_officials.db")
db.results_as_hash = true

create_state_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS states(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
  )
SQL

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

db.execute(create_state_table_cmd)
db.execute(create_party_table_cmd)
db.execute(create_government_table_cmd)
