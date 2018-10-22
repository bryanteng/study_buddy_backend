class CreateNotecards < ActiveRecord::Migration[5.2]
  def change
    create_table :notecards do |t|
      t.string :front, default: "click to edit"
      t.string :back
      t.belongs_to :category
      t.belongs_to :user
      t.belongs_to :subcategory
      t.timestamps
    end
  end
end
