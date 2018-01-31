class Studio < ApplicationRecord
  belongs_to :user
  has_many :courses, dependent: :destroy

  validates :name, :description, :phone, presence: true, uniqueness: true
end
