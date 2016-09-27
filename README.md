# README

### Installation
* `bundle`

### DB setting
* Path: _/config/database.yml_
* Change username and password

### Static file
* _/public_

### Lauch server
* `rails s`

### Create a table
* `rails g model [field_name]:[field_type]`
* `rails db:migrate`

### Update the table
* `rails g migration AddSomeThingToModel some_thing:string`
* SomeThing && some_thing is the attribute name added while Model is the table being updated
* `rails db:migrate`

### Many - Many relationship
* http://guides.rubyonrails.org/association_basics.html

### Auth0
* https://manage.auth0.com/#/clients/hDb34f1c3evZ6o4nTW8WRdlbELoGdpE7/quickstart
