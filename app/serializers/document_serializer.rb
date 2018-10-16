class DocumentSerializer < ActiveModel::Serializer
  attributes :id, :delta, :category, :title
  belongs_to :user
  belongs_to :category
end
