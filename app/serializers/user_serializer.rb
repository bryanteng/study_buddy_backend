class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :uniq_categories
  has_many :documents
  # has_many :categories, through: :documents

  def uniq_categories
    object.categories.uniq
  end

end
