class Category < ApplicationRecord
  has_many :has_category
  has_many :courses, through: :has_category
end
