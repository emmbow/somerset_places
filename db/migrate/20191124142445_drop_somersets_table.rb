class DropSomersetsTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :somersets
  end
end
