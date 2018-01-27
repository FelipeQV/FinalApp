class Course < ApplicationRecord
  belongs_to :studio
  has_many :reviews, dependent: :destroy
  has_many :has_category
  has_many :categories, through: :has_category
  validates :name, presence: true
  after_create :save_categories


  def categories=(value)
    @categories = value
  end

  def save_categories
    category_ids.each do |cat|
      HasCategory.create(category_id: cat, course_id: self.id)
    end
  end

end
