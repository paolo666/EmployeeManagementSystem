class CreateEmployees < ActiveRecord::Migration
  def change
    create_table :employees do |t|
      t.string :code
      t.string :firstName
      t.string :middleName
      t.string :lastName
      t.date :birthday
      t.string :gender
      t.timestamps
    end
  end
end
