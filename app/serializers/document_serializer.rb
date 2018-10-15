class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :delta
  belongs_to :user
  belongs_to :category
end
