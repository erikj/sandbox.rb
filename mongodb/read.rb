require 'rubygems'
require 'mongo'

@conn = Mongo::Connection.new
@db   = @conn['sample-db']
@coll = @db['test2']

# @coll.remove
# 3.times do |i|
#   @coll.insert({'a' => i+1})
# end

puts "There are #{@coll.count} records. Here they are:"
@coll.find.each { |doc| puts doc.inspect }
