class Memory < ApplicationRecord
  belongs_to :user
  self.inheritance_column = :category

  validates :category, presence: true

  has_attached_file :memoryphoto, styles: { medium: "600x600>", small: "100x100>", thumb: "34x34>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :memoryphoto, content_type: /\Aimage\/.*\Z/

  scope :trips, -> { where(category: 'Trip') }
  scope :concerts, -> { where(category: 'Concert') }
  scope :achievements, -> { where(category: 'Achievement') }

  def self.categories
    %w(Trip Concert Achievement)
  end
end
