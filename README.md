```

  Rails GraphQL

```

Add to your Gemfile,

```

gem 'graphql', '1.8.13'


```

Then install graphql,

```


bundle exec rails g graphql:install

```

```

bundle exec rails generate model Produc name:string brand:text
bundle exec rails db:migrate

```

Change the following version to your gemfile,

```

gem 'graphiql-rails', '1.5.0', group: :development

```


update your gems,

```

bundle update

```


QUERY IMPLEMENTATION:


Create a model and migarte, 

```

bundle exec rails generate model Product name:string brand:string price:float
bundle exec rails db:migrate

```


app/graphql/types/link_type.rb
```

module Types
	class ProductType < BaseObject
		description "A Product Types"
		field :id, ID,        null: false
		field :name, String,  null: false
		field :brand, String, null: false
		field :price, Float,  null: false
	end
end

```

Query Resolver

```

module Types
  class QueryType < BaseObject
    
    field :all_products, [ProductType], null: false

    def all_products
      Product.all
    end
  end
end


```

Query like, 

```

{
  allProducts{
    id
    name
    brand
    price
  }
}
```

Output,

```

{
  "data": {
    "allProducts": [
      {
        "id": "1",
        "name": "elixir",
        "brand": "ruby",
        "price": 700
      }
    ]
  }
}

```




