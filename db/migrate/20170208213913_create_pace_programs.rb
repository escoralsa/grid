class CreatePacePrograms < ActiveRecord::Migration
  def change
    create_table :pace_programs do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
