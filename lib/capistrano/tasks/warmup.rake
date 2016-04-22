namespace :deploy do
  desc 'Warmup app with warmup url'
  task :warmup do
    on roles(:app) do |h|
      rails_env =
          execute "curl #{fetch(:warmup_url)} --insecure >/dev/null 2>&1", :once => true
    end
  end
end
