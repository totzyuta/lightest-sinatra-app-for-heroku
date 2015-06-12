# Lightest Sinatra App Template for Heroku Deployment

## About This App

This is a lightest Sinatra app for heroku deployment. This app implemtnt: 

- Slim
- Sass
- CoffeeScript

You can just start wity your app with this template soon!

There are two versions.

1. Without Database
2. With Database (Active Record)
  - Production: PostgreSQL
  - Development: SQLite3

If you want to use database on heroku, just you can follow simple instruction below :smiley_cat:

# How to Use

First, please clone this repository.

```
$ git clone https://github.com/totzYuta/sinatra-app-template-for-heroku.git
$ cd sinatra-app-template-for-heroku
```

## Without Database

If you do not have to use database, please use and push `light` branch to deploy your app on heroku now.

```
$ git checkout light
$ heroku create 
$ git push heroku light:master
$ heroku open
```


## With Database

To use database, first add heroku-postgresql after creating heroku app. (To use heroku command, heroku tool-belt should be installed in your computer.)

```
$ heroku create 
$ heroku addons:create heroku-postgresql
```

And create an app and push the souce.

```
$ git push heroku master
```

Third, migrate with the database.

```
$ heroku run rake db:migrate
```

That's it! Enjoy your Sinatra life :sunny:

```
$ heroku open
```
