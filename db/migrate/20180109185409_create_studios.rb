class CreateStudios < ActiveRecord::Migration[5.1]
  def change
    create_table :studios do |t|
      t.string :name
      t.text :description
      t.string :phone
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
