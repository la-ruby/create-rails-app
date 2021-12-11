
Creates [created-rails-app](https://github.com/la-ruby/created-rails-app) daily. [![CI](https://github.com/la-ruby/create-rails-app/actions/workflows/workflow_1.yml/badge.svg)](https://github.com/la-ruby/create-rails-app/actions/workflows/workflow_1.yml)


### 1. Renaming created-rails-app

After forking created-rails-app, rename it to .e.g blog

```
perl -p -i -e 's/CreatedRailsApp/Blog/g' config/application.rb
perl -p -i -e 's/created_rails_app/blog/g' config/*.yml

```

### 2. First time setup

```
./bin/setup
```