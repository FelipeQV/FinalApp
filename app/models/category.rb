class Category < ApplicationRecord
  has_many :has_category
  has_many :courses, through: :has_category
  has_many :favorites, dependent: :destroy
  has_many :users, through: :favorites

  validates :name, presence: true, uniqueness: true
end
