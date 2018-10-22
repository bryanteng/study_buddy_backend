class SubcategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :notecards
  has_many :notecards
end
