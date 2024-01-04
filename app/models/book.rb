class Book < ApplicationRecord
	def self.ransackable_attributes(auth_object = nil)
		["author", "created_at", "id", "id_value", "price", "title", "updated_at"]
	end

	def self.recent number 
		Book.last(number)
	end
end
