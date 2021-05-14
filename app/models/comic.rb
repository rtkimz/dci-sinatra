class Comic < ActiveRecord::Base
  belongs_to :title

  validates :full_path, uniqueness: true
end
