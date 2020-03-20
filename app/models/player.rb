class Player < ApplicationRecord
  #Associations
  belongs_to :movie
  belongs_to :user

  #Actions
  before_create :set_start_date

  private
  def set_start_date
    self.start_date ||= Time.zone.now
  end
end
