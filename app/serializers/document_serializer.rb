class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :delta, :category
  belongs_to :user
  belongs_to :category
end
