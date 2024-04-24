class CreateSections < ActiveRecord::Migration[7.1]
  def change
    create_table :sections do |t|
      t.json :blocks
      t.belongs_to :posts
      t.integer :parent_id, null: true, index: true
      t.integer :lft, null: false, index: true
      t.integer :rgt, null: false, index: true
      t.timestamps
    end
  end
end
