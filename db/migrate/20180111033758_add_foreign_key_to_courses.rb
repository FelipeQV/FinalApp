class AddForeignKeyToCourses < ActiveRecord::Migration[5.1]
  def change
    add_reference :courses, :studio, index: true
  end
end
