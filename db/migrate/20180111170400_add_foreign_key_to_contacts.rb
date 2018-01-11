class AddForeignKeyToContacts < ActiveRecord::Migration[5.1]
  def change
        add_reference :studios, :contact, index: true
  end
end
