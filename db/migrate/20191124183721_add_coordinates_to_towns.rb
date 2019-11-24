class AddCoordinatesToTowns < ActiveRecord::Migration[5.2]
  def change
    add_column :towns, :latitude, :float
    add_column :towns, :longitude, :float
  end
end
