class Category < ApplicationRecord
  #Associations
  has_many :series, class_name: "Serie"
  has_many :movies

  #Validations
  validates :name, presence: true, uniqueness: true
end
