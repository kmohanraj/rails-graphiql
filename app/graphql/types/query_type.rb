module Types
  class QueryType < BaseObject
    
    field :all_products, [ProductType], null: false
    
    description 'get all products'
    def all_products
      Product.all
    end 

    field :get_product, Types::ProductType, null: false do
      argument(:id, ID, required: true)
    end

    description 'Get product id wise show the data'
    def get_product(id:)
      Product.find(id)
    end

  end
end
