class Event < ActiveRecord::Base
  # Currently, only groups can host events (to be changed).
  belongs_to :host, class_name: "Group"
  has_and_belongs_to_many :participants, class_name: "User"

  # Geocoder
  geocoded_by :location
  after_validation :geocode
end
