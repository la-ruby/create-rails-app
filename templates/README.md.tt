
<br>

![](https://img.shields.io/github/stars/la-ruby/created-rails-app.svg) ![](https://img.shields.io/github/forks/la-ruby/created-rails-app.svg) ![](https://img.shields.io/github/issues/la-ruby/created-rails-app.svg)


### If you're reading this

If you're reading this after I have left, please

- [ ] Keep versions up to date.<br>
      I would normally keep rails and bootstrap close to main branches at github.
- [ ] If you inherited it at 100% test coverage<br>
      try to maintain that level.
- [ ] Reek, rubocop and refactor often.


<!-- TOC depthFrom:1 depthTo:6 withLinks:1 orderedList:0 -->

- [First time setup](#first-time-setup)
- [Edit master key](#edit-master-key)
- Testing
	- [Running the tests](#running-the-tests)
	- [Auto runner](#auto-runner)
- Upgrades
	- [Upgrading rails](#upgrading-rails)
	- [Upgrading bootstrap](#upgrading-bootstrap)
- [Coding guidelines](#coding-guidelines)

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


### Edit master key

```
$ EDITOR=vim rails credentials:edit
Adding config/master.key to store the encryption key: example3afed74ffffff6ad3d6ffffffe

Save this in a password manager your team can access.

If you lose the key, no one, including you, can access anything encrypted with it.

      create  config/master.key
...
$
```


### Running the tests

```
$ ./bin/rails test
Running 7 tests in a single process (parallelization threshold is 50)
Run options: --seed 34377

# Running:

.......

Finished in 0.905505s, 7.7305 runs/s, 9.9392 assertions/s.
7 runs, 9 assertions, 0 failures, 0 errors, 0 skips
```

The capybara/selenium tests are run if you append `:all` to `./bin/rails test`


### Auto runner

Try this when refactoring code

```
$ ./bin/autotest
Run options: --seed 12345

# Running:

........

Finished in 1.113936s, 7.1817 runs/s, 8.0795 assertions/s.
8 runs, 9 assertions, 0 failures, 0 errors, 0 skips
Coverage report generated for tests to /Users/administrator/spiffy/coverage. 12 / 12 LOC (100.0%) covered.
```

The test suite gets triggerd when your text editor saves to app/** or test/** <br>
[Guard](https://github.com/guard/guard) and [seattlerb/autotest](https://github.com/seattlerb/autotest) can do this too.


### Upgrading rails

```
$ ./bin/rails --version  # check current version
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

### Upgrading bootstrap

Copy over `bootstrap.css` and `bootstrap.bundle.js` after running `npm run dist` on your fork of twbs/bootstrap

```
$ cd ~/
$ git clone https://github.com/la-ruby/your-bootstrap-fork
$ cd ~/your-bootstrap-fork
$ npm install
$ npm run dist
$ cp dist/css/bootstrap.css ~/created-rails-app/public/
$ cp dist/js/bootstrap.bundle.js ~/created-rails-app/public/
```


### Coding guidelines

* Start PR with "WIP" in the title (and remove it when ready for review)
* Name your branch `nickname/task-id-task-title`
