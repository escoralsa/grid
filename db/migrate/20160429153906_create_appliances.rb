class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.integer :storeNumbre
      t.string :name
      t.string :intIp
      t.string :extIp
      t.string :brand
      t.string :model
      t.string :user
      t.string :password
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
