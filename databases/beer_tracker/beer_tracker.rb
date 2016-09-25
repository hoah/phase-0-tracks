# require gems
require 'sqlite3'


# create SQLite3 database
db = SQLite3::Database.new("beer_tracker.db")



create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beer_tracker(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    age INT
  )
SQL

# create a beer_tracker table
db.execute(create_table_cmd)


def create_kitten(db, name, age)
  db.execute("INSERT INTO kittens (name, age) VALUES (?, ?)", [name, age])
end

1000.times do
  create_kitten(db, Faker::Name.name, 0)
end

