class CreatePaceProgramCustomers < ActiveRecord::Migration
  def change
    create_table :pace_program_customers do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :paceProgram, index: true, foreign_key: true
      t.text :note

      t.timestamps null: false
    end
  end
end
