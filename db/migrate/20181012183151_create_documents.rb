class CreateDocuments < ActiveRecord::Migration[5.2]
  def change
    create_table :documents do |t|
      t.jsonb :delta, default: [], array: true
      t.belongs_to :user
      t.belongs_to :category
      t.timestamps
    end
  end
end
