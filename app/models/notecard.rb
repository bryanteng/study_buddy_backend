class Notecard < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :subcategory
  validates :front, presence: true
  validates :back, presence: true
  validates :category_id, presence: true
  validates :subcategory_id, presence: true

end
