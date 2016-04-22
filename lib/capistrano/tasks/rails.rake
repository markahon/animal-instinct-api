namespace :rails do
  desc 'tail rails logs'
  task :tail do
    on roles(:app) do
      set :log_level, :debug
      configure_backend
      execute "tail -f -n 100 #{shared_path}/log/production.log"
    end
  end
end

desc 'Invoke a rake command on the remote server'
task :invoke, [:command] => 'deploy:set_rails_env' do |task, args|
  on primary(:app) do
    within current_path do
      with :rails_env => fetch(:rails_env) do
        rake args[:command]
      end
    end
  end
end


