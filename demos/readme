
# README

- created with [create-rails-app](https://github.com/la-ruby/create-rails-app)
- [demo](https://created-rails-app.herokuapp.com/posts)

## Quickstart

```
cd ~
git clone git@github.com:la-ruby/created-rails-app.git
cd created-rails-app
bundle install
yarn install
bundle exec rake webpacker:clobber
bundle exec rails db:drop db:create db:migrate
./bin/rails s
# open http://localhost:3000/posts to verify
```

# Customize name of application

Suppose you want to name your new app "web-app",

```
mv ~/created-rails-app web-app
git grep -lz CreateRailsApp | xargs -0 sed -i '' -e 's/CreatedRailsApp/WebApp/g'
git grep -lz created-rails-app | xargs -0 sed -i '' -e 's/created-rails-app/web-app/g'
git grep -lz created_rails_app | xargs -0 sed -i '' -e 's/created_rails_app/web_app/g'
git checkout README.md # no need to change readme
git add --all
git commit -m "Renamed application"
```