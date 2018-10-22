class Subcategory < ApplicationRecord
  validates :name, presence: true

  has_many :notecards
  has_many :users, through: :notecards
end
