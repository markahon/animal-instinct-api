# -*- encoding : utf-8 -*-

set :warmup_url, 'http://abc.com'
set :rvm_type, :system
set :rvm_ruby_version, '2.2.0@animal-instinct-api'

set :asset_env, 'NG_FORCE=true'

namespace :deploy do
  after :finished, 'deploy:warmup'
  after :finished, 'deploy:cleanup'
  #after :finished, 'app:build_products_dbs'
end

server '37.139.18.200', user: 'deploy', roles: %w{web app db}
set :ssh_options, {
                    keys: '~/.ssh/nomenal-deploy_id_rsa',
                    forward_agent: false
                }
