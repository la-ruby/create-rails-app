[![Build Status](https://api.travis-ci.org/la-ruby/create-rails-app.svg?branch=master)](http://travis-ci.org/la-ruby/create-rails-app)
[![Code Climate](https://codeclimate.com/github/la-ruby/create-rails-app.svg)](https://codeclimate.com/github/la-ruby/create-rails-app)

`create-rails-app` creates a rails application based on the "latest stable version" thats out there.
The end result is posted to https://github.com/la-ruby/web-common-core, so if your rails
application is based on the "common core", you can stay up to date by:

- Merging or rebasing off the common core (weekly)
- Run test suite
- Deploy to a canary server
- Deploy to all production nodes (assuming no issues in the canaries)

There's a good article on this topic: <a href="https://engineering.shopify.com/blogs/engineering/living-on-the-edge-of-rails">Living on the Edge of Rails</a>

You can use `git merge ...` to sync up - like this:

```bash
git remote add upstream git@github.com:la-ruby/web-common-core.git
git fetch upstream
git checkout master
git merge upstream/master
```

#### Whats included

- Mention one time tasks in readme, replace web_common_core, replace WEB_COMMON_CORE, bundle exec rake db:setup
- Add bootstrap, fontawesome, activeadmin
- TODO Sidekiq
- TODO Js testing like at [mapbox](https://github.com/mapbox/mapbox-gl-js) or sharetribe
- TODO React datatables example
- TODO Rspec example tests
- TODO Foreman is probablty not necc. - see direnv
- TODO Elasticsearch setup
- TODO Heroku CI


#### Projects

Some projects have started using (it)(https://github.com/la-ruby/web-common-core), others -  I
have stakeholders approval and haven't migrated yet:

- www2.enroutetire.com
- www.bwmglobalproducts.com
- www.raceplace.com
- www.sketchbookproject.com
- www.hubshop.ly
- www.gettract.com


#### License
(The MIT License)

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the 'Software'), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
