class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :trackable, :rememberable, :validatable

  #Associations
  has_many :reviews
  has_many :favorites
  has_many :players

  #Validations
  validates :name, presence: true, on: :update
end
