class CreatePokemons < ActiveRecord::Migration
  def change
    create_table :pokemons do |t|
      t.string :name
      t.integer :number
      t.string :avatar

      t.timestamps null: false
    end
  end
end
