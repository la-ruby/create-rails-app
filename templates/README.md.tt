
### 1. After forking created-rails-app, rename it to .e.g blog

```
perl -p -i -e 's/CreatedRailsApp/Blog/g' config/application.rb
perl -p -i -e 's/CreatedRailsApp/Blog/g' app/views/layouts/application.html.erb
perl -p -i -e 's/created_rails_app/blog/g' config/*.yml
perl -p -i -e 's/CREATED_RAILS_APP/BLOG/g' config/*.yml
perl -p -i -e 's/created_rails_app/blog/g' config/environments/*.rb
```

### 2. Setup gems and database


```
./bin/setup
```

### 3. Run unit tests
```
./bin/rails test
```

### 4. Start the server

```
./bin/rails s
```

### 5. Upgrading


### 5.1 Upgrading rails
```
$ ./bin/rails --version
Rails 7.0.0
$ git remote add upstream git@github.com:la-ruby/created-rails-app.git
$ git fetch upstream
remote: Enumerating objects: 313, done.
remote: Counting objects: 100% (313/313), done.
remote: Compressing objects: 100% (179/179), done.
remote: Total 285 (delta 151), reused 230 (delta 96), pack-reused 0
Receiving objects: 100% (285/285), 1.38 MiB | 2.43 MiB/s, done.
Resolving deltas: 100% (151/151), completed with 19 local objects.
From github.com:la-ruby/created-rails-app
 * [new branch]      main       -> upstream/main
$ git merge upstream/latest --allow-unrelated-histories
$ ./bin/rails --version
Rails 7.0.1
```

Enjoy! 🎉

### 5.2 Customizing bootstrap

Fork twbs/bootstrap to github.com/yourCompany/
Make changes to that repo, `npm run dist` to generate fresh bundle,
and replace your `./app/assets/stylesheets/bootstrap.css`
and `./public/bootstrap.bundle.js`.

### 5.3 Upgrading bootstrap

[Sync your fork](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/syncing-a-fork#syncing-a-fork-from-the-web-ui),  then `npm run dist` to generate fresh bundle,
and replace your `./app/assets/stylesheets/bootstrap.css`
and `./public/bootstrap.bundle.js`


