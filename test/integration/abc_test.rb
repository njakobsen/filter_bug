require 'test_helper'

puts "All tables: #{ActiveRecord::Base.connection.tables.join(', ')}"