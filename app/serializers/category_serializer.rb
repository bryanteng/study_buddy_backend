class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :documents
  has_many :users, through: :documents
  has_many :notecards
  has_many :users, through: :notecards
end
