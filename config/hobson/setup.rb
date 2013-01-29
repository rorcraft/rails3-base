puts "HOBSON SETUP HOOK"
sleep 3
ENV['HOBSON_SETUP_HOOK_RUN'] = "true"

Hobson.logger.info "copy database.yml"

execute "cp config/database.yml.example config/database.yml"
execute "RAILS_ENV=test rake db:create db:migrate"
