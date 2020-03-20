class Serie < ApplicationRecord
  include Highlightable
  include PgSearch
  multisearchable against: [:title]

  #Associations
  belongs_to :category
  belongs_to :last_watched_episode, class_name: "Movie", optional: true
  has_many :reviews, as: :reviewable
  has_many :episodes, ->{ order(:episode_number) }, class_name: "Movie", dependent: :destroy

  #Validations
  validates :title, presence: true
  validates :description, presence: true
  validates :thumbnail_key, presence: true
end
