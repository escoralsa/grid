class CreateLinuxUsers < ActiveRecord::Migration
  def change
    create_table :linux_users do |t|
      t.string :user
      t.string :password
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
