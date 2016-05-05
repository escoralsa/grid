class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.datetime :date
      t.text :description
      t.references :employee, index: true, foreign_key: true
      t.references :ticket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
