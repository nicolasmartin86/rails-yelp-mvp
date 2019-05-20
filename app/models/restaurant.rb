class Restaurant < ApplicationRecord

  RESTAURANTS = %w[chinese french belgian italian japanese]

  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true
  validates :category, inclusion: { in: %w[chinese french belgian italian japanese] }
end
