class CreateDocs < ActiveRecord::Migration
  def change
    create_table :docs do |t|
      t.string :title
      t.string :slug, :unique => true
      t.text :description
      t.text :implementation

      t.references :user

      t.timestamps null: false
    end
  end
end
