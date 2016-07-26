class Memory < ApplicationRecord
  belongs_to :user
  self.inheritance_column = :category

  validates :category, presence: true
  
  scope :trips, -> { where(category: 'Trip') }
  scope :concerts, -> { where(category: 'Concert') }
  scope :achievements, -> { where(category: 'Achievement') }

  def self.categories
    %w(Trip Concert Achievement)
  end
end
