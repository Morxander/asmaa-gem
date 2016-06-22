require "asmaa/version"
require 'sqlite3'

module Asmaa
  
  @db = SQLite3::Database.new File.join(File.dirname(File.expand_path(__FILE__)), 'asmaa.db')
  
  def self.get_gender name
    query = @db.prepare "SELECT * FROM names WHERE first_name=?"
    first_name = name.split()[0]
    query.bind_param 1, first_name
    result = query.execute.next
    unless result.nil?
      result[0]
    else
      "unknown"
    end
  end

  def self.is_male? name
    self.get_gender(name) == 'male'
  end

  def self.is_female? name
    self.get_gender(name) == 'female'
  end

end
