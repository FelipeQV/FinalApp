class Studio < ApplicationRecord
  belongs_to :contact
  has_many :courses, dependent: :destroy
end
