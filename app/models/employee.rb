class Employee < ActiveRecord::Base
	has_many :borrowed_equipments
end
