require 'rubygems'
require 'mongo'
require 'digest/md5'

@conn = Mongo::Connection.new
@db   = @conn['sample-db']
@coll = @db['test2']

# @coll.remove

n = 1500000000

n.times do |i|
  t = Time.now
  @coll.insert( { 'a' => i+1, :created_at=>t, :modified_at=>t, :some_md5=>Digest::MD5.hexdigest(t.to_s) } )
end

puts "#{n} inserts."
puts "Collection contains #{@coll.count} records."
# @coll.find.each { |doc| puts doc.inspect }
