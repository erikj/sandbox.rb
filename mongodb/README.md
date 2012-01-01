# sandbox for ruby-mongodb experiments

- [mongoDB Ruby Language Center](http://www.mongodb.org/display/DOCS/Ruby+Language+Center)

- [mongo-ruby-driver](https://github.com/mongodb/mongo-ruby-driver)

- [mongoDB ruby API docs](http://api.mongodb.org/ruby/current/)

## set-up

    $ gem install mongo bson_ext

## TODO:

[Mongoid v. MongoMapper](http://www.rubyinside.com/mongoid-vs-mongomapper-two-great-mongodb-libraries-for-ruby-3432.html)



### [mongomapper](http://mongomapper.com/)

- [EmbeddedDocument](http://mongomapper.com/documentation/embedded-document.html)

- [Associations](http://mongomapper.com/documentation/plugins/associations.html)

  - one-to-many: `many / belongs_to`

        class Tree; include MongoMapper::Document
          many :birds
        end
        
        class Bird; include MongoMapper::Document
          belongs_to :tree
        end

  - many-to-many `many`

        class Book; include MongoMapper::Document
          key :author_ids, Array
          many :authors, :in => :author_ids
        end
        
        class Author; include MongoMapper::Document
        end

  - one-to-one `one / belongs_to`

        class Employee; include MongoMapper::Document
          one :desk
        end
        
        class Desk; include MongoMapper::Document
          belongs_to :employee
        end
