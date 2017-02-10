class CreateAttacheds < ActiveRecord::Migration
  def change
    create_table :attacheds do |t|
      t.string :description
      t.string :file
      t.references :ticket, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
