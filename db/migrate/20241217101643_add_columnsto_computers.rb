class AddColumnstoComputers < ActiveRecord::Migration[7.1]
  def change
    add_column :computers, :availability_start_date, :date
    add_column :computers, :availability_end_date, :date
  end
end
