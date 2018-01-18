class Review < ApplicationRecord
  belongs_to :user
  belongs_to :course
    validates :stars, presence: true
end
