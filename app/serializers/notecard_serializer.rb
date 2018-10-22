class NotecardSerializer < ActiveModel::Serializer
  attributes :id, :front, :back, :category, :subcategory
  belongs_to :user
  belongs_to :subcategory
  belongs_to :category
end
