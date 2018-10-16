class Document < ApplicationRecord
  validates :title, presence: true
  validates :title, uniqueness: true

  belongs_to :user
  belongs_to :category
end
