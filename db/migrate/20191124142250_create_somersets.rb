class CreateSomersets < ActiveRecord::Migration[5.2]
  def change
    create_table :somersets do |t|

      t.timestamps
    end
  end
end
