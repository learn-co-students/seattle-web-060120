class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.integer :age
      t.string :hometown

      t.timestamps
    end
  end
end
