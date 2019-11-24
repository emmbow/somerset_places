class CreateTowns < ActiveRecord::Migration[5.2]
  def change
    create_table :towns do |t|
      t.string :name
      t.text :desc
      t.string :url
      t.integer :long
      t.integer :lat

      t.timestamps
    end
  end
end
