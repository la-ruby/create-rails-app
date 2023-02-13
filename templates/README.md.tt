
<br>

![](https://img.shields.io/github/stars/la-ruby/created-rails-app.svg) ![](https://img.shields.io/github/forks/la-ruby/created-rails-app.svg) ![](https://img.shields.io/github/issues/la-ruby/created-rails-app.svg)

<!-- TOC depthFrom:1 depthTo:6 withLinks:1 orderedList:0 -->

- [First time setup](#first-time-setup)
- [Deploy to heroku](#deploy-to-heroku)

<!-- /TOC -->


### First Time Setup

```
$ cd ~/


$ git clone git@github.com:la-ruby/created-rails-app.git
Cloning into 'created-rails-app'...
remote: Enumerating objects: 3377, done.
remote: Counting objects: 100% (342/342), done.
remote: Compressing objects: 100% (212/212), done.
remote: Total 3377 (delta 194), reused 258 (delta 123), pack-reused 3035
Receiving objects: 100% (3377/3377), 3.59 MiB | 1.76 MiB/s, done.
Resolving deltas: 100% (1767/1767), done.


$ cd created-rails-app/


$ ./bin/setup
== Installing dependencies ==
The Gemfile's dependencies are satisfied

== Preparing database ==
Created database 'wood_development'
Created database 'wood_test'

== Removing old logs and tempfiles ==

== Restarting application server ==


$ yarn install
yarn install v1.22.17
[1/4] 🔍  Resolving packages...
[2/4] 🚚  Fetching packages...
[3/4] 🔗  Linking dependencies...
[4/4] 🔨  Building fresh packages...
✨  Done in 8.69s.


$ yarn build
yarn run v1.22.19
$ esbuild app/javascript/*.* --bundle --sourcemap --outdir=app/assets/builds --public-path=assets
  app/assets/builds/application.js      1.2mb ⚠️
  app/assets/builds/application.js.map  1.9mb
✨  Done in 0.37s.


$ yarn build:css
yarn run v1.22.19
$ sass ./app/assets/stylesheets/application.bootstrap.scss:./app/assets/builds/application.css --no-source-map --load-path=node_modules
✨  Done in 0.91s.


$ ./bin/rails test
Running 7 tests in a single process (parallelization threshold is 50)
Run options: --seed 34377

# Running:

.......

Finished in 0.905505s, 7.7305 runs/s, 9.9392 assertions/s.
7 runs, 9 assertions, 0 failures, 0 errors, 0 skips


$ ./bin/dev
03:03:43 web.1  | started with pid 60064
03:03:43 js.1   | started with pid 60065
03:03:43 css.1  | started with pid 60066
03:03:43 js.1   | yarn run v1.22.17
03:03:43 css.1  | yarn run v1.22.17
03:03:43 js.1   | $ esbuild app/javascript/*.* --bundle --sourcemap --outdir=app/assets/builds --watch
03:03:43 css.1  | $ sass ./app/assets/stylesheets/application.bootstrap.scss ./app/assets/builds/application.css --no-source-map --load-path=node_modules --watch
03:03:43 js.1   | [watch] build finished, watching for changes...
03:03:44 css.1  | Compiled app/assets/stylesheets/application.bootstrap.scss to app/assets/builds/application.css.
03:03:44 css.1  | Sass is watching for changes. Press Ctrl-C to stop.
03:03:44 css.1  | 
03:03:44 web.1  | => Booting Puma
03:03:44 web.1  | => Rails 7.0.3 application starting in development 
03:03:44 web.1  | => Run `bin/rails server --help` for more startup options
03:03:44 web.1  | Puma starting in single mode...
03:03:44 web.1  | * Puma version: 5.6.4 (ruby 3.0.3-p157) ("Birdie's Version")
03:03:44 web.1  | *  Min threads: 5
03:03:44 web.1  | *  Max threads: 5
03:03:44 web.1  | *  Environment: development
03:03:44 web.1  | *          PID: 60064
03:03:44 web.1  | * Listening on http://127.0.0.1:3000
03:03:44 web.1  | * Listening on http://[::1]:3000
03:03:44 web.1  | Use Ctrl-C to stop
```

### Deploy to heroku

```
$ git push heroku main
$ heroku run rails db:migrate
$ # now try http://yourapp.herokuapp.com/examples on your browser
```

