class Studio < ApplicationRecord
  belongs_to :user
  has_many :courses, dependant: :destroy
end
