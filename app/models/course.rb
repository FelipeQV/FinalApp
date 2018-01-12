class Course < ApplicationRecord
  belongs_to :studio
  has_many :reviews
end
