class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.text :adress
      t.string :phone
      t.string :contact
      t.string :rfc
      t.string :email
      t.string :ip
      t.text :server
      t.boolean :datacenter
      t.string :vpacesetter
      t.string :vprogress
      t.integer :userNumber
      t.string :catalog
      t.string :softwareC
      t.text :programesp
      t.text :emailpdf
      t.text :emailxml
      t.boolean :pdf

      t.timestamps null: false
    end
  end
end
