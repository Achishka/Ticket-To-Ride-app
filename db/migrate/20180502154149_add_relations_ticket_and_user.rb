class AddRelationsTicketAndUser < ActiveRecord::Migration[5.1]
  def change
    add_reference :tickets, :user
  end
end
