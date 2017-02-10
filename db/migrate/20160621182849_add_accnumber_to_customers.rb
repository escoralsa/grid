class AddAccnumberToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :accnumber, :integer
  end
end
