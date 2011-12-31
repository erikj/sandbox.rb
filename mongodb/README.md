# sandbox for ruby-mongodb experiments

- [mongoDB Ruby Language Center](http://www.mongodb.org/display/DOCS/Ruby+Language+Center)

- [mongo-ruby-driver](https://github.com/mongodb/mongo-ruby-driver)

- [mongoDB ruby API docs](http://api.mongodb.org/ruby/current/)

## set-up

    $ gem install mongo bson_ext

## TODO:

### [mongoid](http://mongoid.org/)

- references

  - [has_many](http://mongoid.org/docs/relations/referenced/1-n.html)

  - [has_one](http://mongoid.org/docs/relations/referenced/1-1.html)

  - [habtm](http://mongoid.org/docs/relations/referenced/n-n.html)

        class Person
          include Mongoid::Document
          field :title, type: String
          has_and_belongs_to_many :tags
        end

        class Tag
          include Mongoid::Document
          field :name, type: String
          has_and_belongs_to_many :people
        end

- [relations](http://mongoid.org/docs/relations.html)

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


### [mongomapper](http://mongomapper.com/)

- [EmbeddedDocument](http://mongomapper.com/documentation/embedded-document.html)

- [Associations](http://mongomapper.com/documentation/plugins/associations.html)