class User < ApplicationRecord
  has_many :memories
  delegate :trips, :concerts, :achievements, to: :memories
end
