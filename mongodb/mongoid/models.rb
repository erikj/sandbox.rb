require 'rubygems'
require 'mongoid'

class Station
  include Mongoid::Document
  field :latitude,      :type=> Float
  field :longitude,     :type=> Float
  field :zip,           :type => Integer
  field :location_code, :type => String
  # has_many :forecasts
  # has_many :observations
  # has_many :alerts
end

# class Forecast
#   include Mongoid::Document
#   include Mongoid::Timestamps
#   field :forecast_start, :type=>DateTime
#   field :forecast_end,   :type=>DateTime
#   belongs_to :station
#   has_many :observations
#   validates_presence_of :station
# end

# class Observation
#   include Mongoid::Document
#   include Mongoid::Timestamps
#   field :observation_date, :type=>DateTime
#   belongs_to :station
#   belongs_to :forecast
#   validates_presence_of :station
# end

# class Alert
#   include Mongoid::Document
#   include Mongoid::Timestamps
#   field :alert_start, :type=>DateTime
#   field :alert_end,   :type=>DateTime
#   belongs_to :station
#   validates_presence_of :station
# end
