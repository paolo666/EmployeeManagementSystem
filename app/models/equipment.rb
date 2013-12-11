class Equipment < ActiveRecord::Base
	belongs_to :borrowed_equipment
	belongs_to :employee
end
