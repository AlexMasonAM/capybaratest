class CreateVegetables < ActiveRecord::Migration
  def change
    create_table :vegetables do |t|
      t.string :name
      t.integer :quanity

      t.timestamps null: false
    end
  end
end
