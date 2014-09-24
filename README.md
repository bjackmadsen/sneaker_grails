#Grails
Grails lets users add and catalog their all time favorite Sneakers.

The project is for the [minimal magic rails assesment] (http://www.learnhowtoprogram.com/lessons/conventional-rails-assessment) for [Epicodus](http://www.epicodus.com/).

##Setup
In your terminal, clone this repo:

```console
$ clone https://github.com/bjackmadsen/grails.git
```

Make sure you've installed [postgres](http://www.postgresql.org/download/) and have started the server:

```console
$ postgres
```

Install all the dependencies:

```console
$ bundle install
```

Set up the databases on your local machine:

```console
$ rake db:create
$ rake db:schema:load
```

Finally, start the rails server:

```console
$ rails s
```
It should now be available at `localhost:3000`.

Alternatively, the live app is on [Heroku](http://sneaker-grails.herokuapp.com/).

##Author
Brandon Madsen

##License
MIT
