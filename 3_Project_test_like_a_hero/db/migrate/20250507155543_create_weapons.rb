class CreateWeapons < ActiveRecord::Migration[8.0]
  def change
    create_table :weapons do |t|
      t.string :name
      t.text :description
      t.integer :power_base
      t.integer :power_step
      t.integer :level

      t.timestamps
    end
  end
end
