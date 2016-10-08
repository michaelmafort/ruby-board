# README

This is a sample board for scrum team, note that this program is only for study purpose.

This app has:
 - signup form;
 - authentication user;
 - projects crud;
 - tasks crud; and
 - board with tasks to use like a kanban.

## Requirements:

- Ruby 2.3.1
- PostgreSql
- Fontawesome
- AngularJS 1.5.8

## Development

To test this app in your development environment follow the steps below:


```
$ git clone <this-repo-url> board
$ cd board
$ bundle install
$ rake db:migrate RAILS_ENV=development
$ rails s
```

After, open your browser and enter in [http://localhost:3000](http://localhost:3000)


## Deploy

* You can deploy this app on heroku with simple setting the postgresql database name in config/database.yml in production group
and submit your code to heroku repository.