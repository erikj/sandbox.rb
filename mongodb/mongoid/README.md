# [mongoid](http://mongoid.org/)

> an Object-Document-Mapper (ODM) for MongoDB written in Ruby. It was conceived in August, 2009 during a whiskey-induced evening at the infamous Oasis in Florida, USA by Durran Jordan.

> The philosophy of Mongoid is to provide a familiar API to Ruby developers who have been using Active Record or Data Mapper, while leveraging the power of MongoDB's schemaless and performant document-based design, dynamic queries, and atomic modifier operations.

## [criteria](http://mongoid.org/docs/querying/criteria.html)

> The following are a list of chainable criteria query methods in Mongoid along with their corresponding database selectors or options.

> Please note again that criteria are lazy evaluated, and with each chained method it will be cloned and return a new criteria copy.


## [relations](http://mongoid.org/docs/relations.html)

> Relations are associations between one model and another in the domain and in the database. Embedded relations describe documents who are stored inside other documents in the database. Referenced relations describe documents that reference documents in another collection by storing data (usually an id) about the other document in itself.


- references

  - [has_many](http://mongoid.org/docs/relations/referenced/1-n.html)

        class Person; include Mongoid::Document
          has_many :posts
        end
        
        class Post; include Mongoid::Document
          belongs_to :person
        end

  - [has_one](http://mongoid.org/docs/relations/referenced/1-1.html)

        class Person; include Mongoid::Document
          has_one :game
        end
        
        class Game; include Mongoid::Document
          belongs_to :person
        end

  - [habtm](http://mongoid.org/docs/relations/referenced/n-n.html)

        class Person; include Mongoid::Document
          field :title, type: String
          has_and_belongs_to_many :tags
        end

        class Tag; include Mongoid::Document
          field :name, type: String
          has_and_belongs_to_many :people
        end

- [embeds_many](http://mongoid.org/docs/relations/embedded/1-n.html)

      class Person
        include Mongoid::Document
        embeds_many :addresses
      end

      class Address
        include Mongoid::Document
        embedded_in :person
      end

- [embeds_one](http://mongoid.org/docs/relations/embedded/1-1.html)

      class Person
        include Mongoid::Document
        embeds_one :name
      end
        
      class Name
        include Mongoid::Document
        embedded_in :person
      end
