class CreateUserPlants < ActiveRecord::Migration[8.0]
  def change
    create_table :user_plants do |t|
      t.string :name
      t.string :latin_name
      t.string :light
      t.string :soil
      t.string :water
      t.string :temperature
      t.integer :humidity

      t.timestamps
    end
  end
end
