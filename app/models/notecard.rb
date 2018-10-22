class Notecard < ApplicationRecord
  belongs_to :category
  belongs_to :user
  belongs_to :subcategory
end
