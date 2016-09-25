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


def add_beer_tracker(db, info_array)

  db.execute(
    "INSERT INTO beer_tracker (beer_name, brewed_in, served_from, star_rating, last_drank)
    VALUES (?, ?, ?, ?, ?)",
    ["#{info_array[0]}", "#{info_array[1]}", "#{info_array[2]}",
    "#{info_array[3]}", "#{info_array[4]}"]
    )
end

def print_data(db)
  print_db = db.execute( <<-SQL
    SELECT * FROM beer_tracker
    SQL
  )

  print_db.each_index do |i|
    p print_db[i]
  end
end

def delete(db)
  print_data(db)

  puts "Please enter the id number of the beer you want to delete."
  id = gets.chomp.to_i

  db.execute( <<-SQL 
    DELETE FROM beer_tracker
    WHERE id="#{id}";
    SQL
    )
end

def get_info()
  info_array = []

  puts "What is the name of the beer"
  beer_name = gets.chomp

  puts "Was this beer 'domestic' or 'imported'?"
  brewed_in = gets.chomp

  puts "Did you have this from the 'bottle' or 'draft'?"
  served_from = gets.chomp

  puts "How well did you like the beer? (1-5)"
  star_rating = gets.chomp.to_i

  puts "When was the last time your drank this beer? 'YYYY-MM-DD'"
  last_drank = gets.chomp

  info_array = [beer_name, brewed_in, served_from, star_rating, last_drank]
end

def add(db)
  add_beer_tracker(db, get_info())
end

def update(db)
  puts "Here is what you have drunk so far."
  print_data(db)

  puts "Please enter the id number for the beer you want to update."
  id = gets.chomp.to_i

  info_array = get_info()

  db.execute( <<-SQL 
    UPDATE beer_tracker
    SET  beer_name="#{info_array[0]}",
         brewed_in="#{info_array[1]}",
         served_from="#{info_array[2]}",
         star_rating="#{info_array[3]}",
         last_drank="#{info_array[4]}"
    WHERE id="#{id}";
    SQL
    )
end





# test driver code

test_array = [
  ["Sam Adams", "domestic", "bottle", 3, "2016-08-25"],
  ["Fat tire", "domestic", "bottle", 4, "2016-09-24"],
  ["512 pecan porter", "domestic", "draft", 5, "2016-09-25"]
]

test_array.each_index do |i|
  add_beer_tracker(db, test_array[i])
end


# driver code

# ask user if they want to add to their tracker or print out the database
answer = nil

until answer == "done"
  puts "What would you like to do? (add, update, delete, print, or done)"

  answer = gets.chomp

  if answer == "add"
    add(db)

  elsif answer == "update"
    update(db)

  elsif answer == "delete"
    delete(db)

  elsif answer == "print"
    print_data(db)

  end

end