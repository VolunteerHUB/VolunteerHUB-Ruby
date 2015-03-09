class User < ActiveRecord::Base
  has_and_belongs_to_many :groups, class_name: "Group"
  has_and_belongs_to_many :participating, class_name: "Event"
  # Devise
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
