class CreatePeople < ActiveRecord::Migration[7.1]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :weapon
      t.string :gender
      t.string :species
      t.string :vehicle
      t.string :location
      t.string :affiliations

      t.timestamps
    end
  end
end
