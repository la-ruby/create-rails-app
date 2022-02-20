
Creates [created-rails-app](https://github.com/la-ruby/created-rails-app) daily. [![CI](https://github.com/la-ruby/create-rails-app/actions/workflows/workflow_1.yml/badge.svg)](https://github.com/la-ruby/create-rails-app/actions/workflows/workflow_1.yml)


#### Renaming created-rails-app

After forking created-rails-app, rename it to .e.g blog

```
perl -p -i -e 's/CreatedRailsApp/Blog/g' config/application.rb
perl -p -i -e 's/CreatedRailsApp/Blog/g' app/views/layouts/application.html.erb
perl -p -i -e 's/created_rails_app/blog/g' config/*.yml
perl -p -i -e 's/CREATED_RAILS_APP/BLOG/g' config/*.yml
perl -p -i -e 's/created_rails_app/blog/g' config/environments/*.rb
```

#### First time setup

```
./bin/setup
```


#### See also

I've borrowed ideas from

  - https://jumpstartrails.com
  - https://bullettrain.co
  - https://github.com/thoughtbot/suspenders (free)
  - https://github.com/bigbinary/wheel (free)
  - https://github.com/heyogrady/jumpstart (free)
  - https://gist.github.com/dhh/782fb925b57450da28c1e15656779556
  