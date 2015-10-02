class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :provider
      t.string :uid
      t.string :email
      t.string :avatar
      t.string :name
      t.string :token
      t.string :nickname

      t.timestamps null: false
    end
  end
end
