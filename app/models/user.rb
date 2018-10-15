class User < ApplicationRecord
  has_many :documents
  has_many :categories, through: :documents
end
