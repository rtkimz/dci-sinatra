class Title < ActiveRecord::Base
  has_many :comics
  belongs_to :publisher
  belongs_to :character

  validates :name, uniqueness: true
end
