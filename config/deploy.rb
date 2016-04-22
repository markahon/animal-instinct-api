# -*- encoding : utf-8 -*-
# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'animal-instinct-api'
set :repo_url, 'git@github.com:markahon/animal-instinct-api.git'

set :deploy_to, "/var/apps/#{fetch(:application)}"
set :scm, :git

set :format, :pretty
set :log_level, :info
set :pty, false
set :port, 22

set :linked_files, %w{config/database.yml config/application.yml}
set :linked_dirs, %w{log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system files}

set :keep_releases, 10

set :use_sudo, false # Don't use sudo

set :rollbar_token, '9d7f25d670a3442dad660c46c2faadf1'
set :rollbar_env, Proc.new { fetch :stage }
set :rollbar_role, Proc.new { :app }

# https://github.com/seuros/capistrano-sidekiq
set :sidekiq_config, 'config/sidekiq.yml'

set :whenever_roles, :app

namespace :deploy do

  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      # Restarts Phusion Passenger
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  after :publishing, 'deploy:restart'

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      execute "rm -rf #{release_path}/public/deploy/*"
    end
  end

  after :finishing, 'deploy:cleanup'
end
