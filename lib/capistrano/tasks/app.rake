namespace :app do

  desc 'Run db:seed in remote'
  task :db_seed do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, 'db:seed RAILS_ENV=production'
        end
      end
    end
  end

end
