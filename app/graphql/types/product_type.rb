module Types
	class ProductType < BaseObject
		description "A Product"
		field :id, ID,        null: false
		field :name, String,  null: false
		field :type, String,  null: false
		field :brand, String, null: false
		field :price, Float,  null: false
	end
end