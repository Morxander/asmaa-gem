require "asmaa/version"
require 'sqlite3'

module Asmaa
  
  @db = SQLite3::Database.new File.join(File.dirname(File.expand_path(__FILE__)), 'asmaa.db')
  
  def self.get_gender name
    first_name = name.split()[0]
    query = @db.prepare "SELECT * FROM names WHERE first_name=?"
    query.bind_param 1, first_name
    result = query.execute
    result.next[0]
  end

  def self.is_male? name
    is_male = false
    first_name = name.split()[0]
    query = @db.prepare "SELECT * FROM names WHERE first_name=?"
    query.bind_param 1, first_name
    result = query.execute
    gender = result.next[0]
    if gender == "male"
      is_male = true
    end
    is_male
  end

  def self.is_female? name
    is_female = false
    first_name = name.split()[0]
    query = @db.prepare "SELECT * FROM names WHERE first_name=?"
    query.bind_param 1, first_name
    result = query.execute
    gender = result.next[0]
    if gender == "female"
      is_female = true
    end
    is_female
  end

end
