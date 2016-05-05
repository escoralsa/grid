class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.datetime :date
      t.string :contactName
      t.text :notes
      t.references :employee, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.references :priority, index: true, foreign_key: true
      t.references :situation, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
