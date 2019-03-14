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

bundle exec rails generate model Link url:string description:text
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

bundle exec rails generate model Link url:string description:text
bundle exec rails db:migrate

```


app/graphql/types/link_type.rb
```

module Types
  class LinkType < BaseObject
    field :id, ID, null: false
    field :url, String, null: false
    field :description, String, null: false
  end
end

```

Query Resolver

```

module Types
  class QueryType < BaseObject
    
    field :all_links, [LinkType], null: false

    def all_links
      Link.all
    end
  end
end


```

Query Like, 

```

{
  allLinks{
    id
    url
    desc
  }
}

```





