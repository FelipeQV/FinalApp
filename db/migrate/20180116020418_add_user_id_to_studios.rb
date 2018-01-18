class AddUserIdToStudios < ActiveRecord::Migration[5.1]
  def change
            add_reference :studios, :user, index: true

  end
end
