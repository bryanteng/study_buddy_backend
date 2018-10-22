class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :uniq_categories, :notecards, :uniq_notecard_categories, :uniq_notecard_subcategories
  has_many :documents
  has_many :notecards
  # has_many :categories, through: :documents

  def uniq_categories
    object.categories.uniq
  end

  def uniq_notecard_categories
    object.notecards.map{|notecard| notecard.category.name}.uniq
  end

  def uniq_notecard_subcategories
    object.notecards.map{|notecard| notecard.subcategory.name}.uniq
  end

end
