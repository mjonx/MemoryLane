class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :memories
  delegate :trips, :concerts, :achievements, to: :memories
  validates :email, presence: true
  has_attached_file :avatar, styles: { medium: "600x600>", small: "100x100>", thumb: "40x40>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
