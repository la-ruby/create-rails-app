
# created-rails-app

![](https://img.shields.io/github/stars/la-ruby/created-rails-app.svg) ![](https://img.shields.io/github/forks/la-ruby/created-rails-app.svg) ![](https://img.shields.io/github/issues/la-ruby/created-rails-app.svg)


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

$ ./bin/rails test
Running 7 tests in a single process (parallelization threshold is 50)
Run options: --seed 34377

# Running:

.......

Finished in 0.905505s, 7.7305 runs/s, 9.9392 assertions/s.
7 runs, 9 assertions, 0 failures, 0 errors, 0 skips

$ ./bin/rails server
=> Booting Puma
=> Rails 7.0.2.2 application starting in development 
=> Run `bin/rails server --help` for more startup options
Puma starting in single mode...
* Puma version: 5.6.2 (ruby 3.0.3-p157) ("Birdie's Version")
*  Min threads: 5
*  Max threads: 5
*  Environment: development
*          PID: 93154
* Listening on http://127.0.0.1:3000
* Listening on http://[::1]:3000
Use Ctrl-C to stop




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






