class Subcategory < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true

  has_many :notecards
  has_many :users, through: :notecards
end
