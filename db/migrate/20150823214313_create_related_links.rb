class CreateRelatedLinks < ActiveRecord::Migration
  def change
    create_table :related_links do |t|
      t.string :link
      t.string :title
      t.belongs_to :doc, index: true

      t.timestamps null: false
    end
    add_foreign_key :related_links, :docs
  end
end
