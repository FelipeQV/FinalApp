class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_one :studio, dependent: :destroy
         has_many :reviews, dependent: :destroy



           has_many :favorites
           has_many :favorite_categories, through: :favorites, source: :category

           validates :email, presence: true, uniqueness: true


end
