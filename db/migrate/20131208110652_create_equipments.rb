class CreateEquipments < ActiveRecord::Migration
  def change
    create_table :equipments do |t|
      t.string :code
      t.string :name
      t.integer :quantity

      t.timestamps
    end
  end
end
