class CreateComputers < ActiveRecord::Migration[7.1]
  def change
    create_table :computers do |t|
      t.string :name
      t.date :creation_year
      t.string :brand
      t.integer :price_per_day
      t.string :processor
      t.integer :memory
      t.string :operating_system
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
