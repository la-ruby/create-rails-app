# https://help.heroku.com/CTFS2TJK/how-do-i-run-multiple-processes-on-a-dyno
web: trap '' SIGTERM; bundle exec sidekiq -q default,1 -c 1 & bin/rails server & wait -n; kill -SIGTERM -$$; wait

