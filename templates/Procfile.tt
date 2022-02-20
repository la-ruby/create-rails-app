# https://help.heroku.com/CTFS2TJK/how-do-i-run-multiple-processes-on-a-dyno
web: bundle exec clockwork clock.rb & bin/rails server -p ${PORT:-5000} -e $RAILS_ENV & wait -n
