# Lightest Sinatra App Template for Heroku Deployment

## About This App

This is a lightest Sinatra app for heroku deployment. You can just start wity your app with this template soon!

There are two versions.

1. Without Database
2. With Database

If you want to use database on heroku, just you can follow 3 steps. Please follow the instruction bellow :smiley_cat:

# How to Use

It is only for using database. If you do not have to use database, you can just clone this repository and use `v1.0` (tag) to deploy your app on heroku soon.

To use database, first add heroku-postgresql.

```
$ heroku addons:create heroku-postgresql
```

And create an app and push the souce.

```
$ heroku create sinatra-app
$ git push heroku master
```

Third, migrate with the database.

```
$ heroku run rake db:migrate
```

That's it! Enjoy your Sinatra life :sunny:
