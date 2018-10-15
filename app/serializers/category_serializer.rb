class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :documents
  has_many :users, through: :documents
end
