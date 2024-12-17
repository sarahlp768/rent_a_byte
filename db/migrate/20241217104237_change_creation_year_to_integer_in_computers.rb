class ChangeCreationYearToIntegerInComputers < ActiveRecord::Migration[7.1]
  def change
    change_column :computers, :creation_year, :integer, using: 'EXTRACT(YEAR FROM creation_year)::integer'
  end
end
