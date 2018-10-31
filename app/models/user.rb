class User < ApplicationRecord
  has_many :documents
  has_many :categories, through: :documents
  has_many :notecards
  has_many :subcategories, through: :notecards
  validates :username, uniqueness: true

  has_secure_password
end
