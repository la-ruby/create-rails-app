# https://help.heroku.com/CTFS2TJK/how-do-i-run-multiple-processes-on-a-dyno
web: trap '' SIGTERM; QUEUE=default COUNT=1 bundle exec rake resque:workers & bin/rails server & wait -n; kill -SIGTERM -$$; wait
release: rake db:migrate
