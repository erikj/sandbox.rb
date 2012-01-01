$:.unshift File.dirname(__FILE__)

require 'models'

# Mongoid.load!("mongoid.yml")

Mongoid.configure do |config|
  config.master = Mongo::Connection.new.db("godfather")
end

station_fields = {
  latitude: 40.0,
  longitude: -120,
  zip: 80301,
  location_code: :GUNB
}

station = Station.new station_fields

station.save
require 'pp'
Station.all().each{ |s| pp s }
