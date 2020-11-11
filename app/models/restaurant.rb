class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, length: { minimum: 1 }, presence: true
  validates :address, length: { minimum: 5 }, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }, presence: true
end
