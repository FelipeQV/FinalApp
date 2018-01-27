class Review < ApplicationRecord
  belongs_to :user
  belongs_to :course
    validates :stars, :content, presence: true
end
