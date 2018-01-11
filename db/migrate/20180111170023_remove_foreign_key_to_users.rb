class RemoveForeignKeyToUsers < ActiveRecord::Migration[5.1]
  def change
        remove_reference :studios, :user, index: true
  end
end
