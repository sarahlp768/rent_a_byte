class AddImagestoComputers < ActiveRecord::Migration[7.1]
  def change
    add_column :computers, :image, :string
    add_column :computers, :description, :string
  end
end
