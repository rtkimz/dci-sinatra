class Character < ActiveRecord::Base
  has_many :titles
  
  validates :name, uniqueness: true
end