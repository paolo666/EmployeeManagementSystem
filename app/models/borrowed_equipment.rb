class BorrowedEquipment < ActiveRecord::Base
  belongs_to :employee
  has_many :equipments
end
