class CreateSortings < ActiveRecord::Migration[5.2]
  def change
    create_join_table :houses, :students
  end
end
