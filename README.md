 # Members Only

Members Only is a project from the [*Ruby on Rails Course*](https://www.theodinproject.com/courses/ruby-on-rails/lessons/authentication) from [*The Odin Project*](https://www.theodinproject.com/home), an open-source curriculum for learning web development with the Ruby on Rails framework.  Members Only allows members to write secret posts about nonmembers by hiding the author of the posts to users who are not logged in.

## Getting started

To get started with the app, clone the repo and then install the needed gems:

```
$ bundle install --without production
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:

```
$ rails server
```

See the app live on [*Heroku:*](https://cryptic-bayou-97393.herokuapp.com/).
