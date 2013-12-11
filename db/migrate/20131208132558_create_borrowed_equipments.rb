class CreateBorrowedEquipments < ActiveRecord::Migration
  def change
    create_table :borrowed_equipments do |t|
      t.date :dateBorrowed
      t.date :dateReturned
      t.references :employee, index: true
      t.references :equipment, index: true

      t.timestamps
    end
  end
end
