class AddContactToTicket < ActiveRecord::Migration
  def change
    add_reference :tickets, :contact, index: true, foreign_key: true
  end
end
