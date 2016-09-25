# require gems
require 'sqlite3'


# create SQLite3 database
db = SQLite3::Database.new("beer_tracker.db")



create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS beer_tracker(
    id INTEGER PRIMARY KEY,
    beer_name VARCHAR(255),
    brewed_in VARCHAR(255),
    served_from VARCHAR(255),
    star_rating INTEGER,
    last_drank DATE
  )
SQL

# create a beer_tracker table
db.execute(create_table_cmd)


def create_beer_tracker(db, beer_name, brewed_in, served_from, star_rating, last_drank)
  db.execute("INSERT INTO beer_tracker (beer_name, brewed_in, served_from, star_rating, last_drank)
    VALUES (?, ?, ?, ?, ?)",
    [beer_name, brewed_in, served_from, star_rating, last_drank])
end




# test driver code

test_array = [
  ["Sam Adams", "domestic", "bottle", 3, "2016-08-25"],
  ["Fat tire", "domestic", "bottle", 4, "2016-09-24"],
  ["512 pecan porter", "domestic", "draft", 5, "2016-09-25"]
]

test_array.each_index do |i|
  create_beer_tracker(db, test_array[i][0], test_array[i][1], test_array[i][2], test_array[i][3], test_array[i][4])
end


# driver code

