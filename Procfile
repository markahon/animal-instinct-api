web: bundle exec rails server thin -b 0.0.0.0 -p 3000 -e development
worker: bundle exec sidekiq -C config/sidekiq.yml -e development