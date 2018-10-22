class User < ApplicationRecord
  has_many :documents
  has_many :categories, through: :documents
  has_many :notecards
  has_many :subcategories, through: :notecards
end
