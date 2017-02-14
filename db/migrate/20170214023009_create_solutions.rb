class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.text :description
      t.string :file
      t.text :solution

      t.timestamps null: false
    end
  end
end
