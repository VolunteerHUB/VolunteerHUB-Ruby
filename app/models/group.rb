class Group < ActiveRecord::Base
  has_and_belongs_to_many :members, class_name: "User"
  has_many :events, class_name: "Event"
end
