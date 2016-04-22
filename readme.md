# Animal instinct

## Development

* Go to path and let rvm install gemset and right ruby version.
* bundle install

## Troubleshooting 

### Error

```
An error occurred while installing libv8 (3.16.14.7), and Bundler cannot continue.
Make sure that `gem install libv8 -v '3.16.14.7'` succeeds before bundling.
```

OR

```
An error occurred while installing therubyracer (0.12.2), and Bundler cannot continue.
Make sure that `gem install therubyracer -v '0.12.2'` succeeds before bundling.
```

#### Solution

* See https://github.com/cowboyd/therubyracer/issues/398#issuecomment-177039290

## Running the Application

* For In development use `foreman` to run: **`foreman start`**. This also starts sidekiq to handle background processes.
* You can also configure RubyMine to run `foreman`: [blog article](http://belighted.com/en/blog/ruby-mine-foreman)
* When started, go to [http://lvh.me:3000](http://lvh.me:3000) or [http://0.0.0.0:3000](http://0.0.0.0:3000) for application

## Deployment to proudction

* Is done with capistrano gem. For production deploy, do `cap production deploy`
* See `config/deploy.rb` and `config/deploy/*` for more detail about deployment.


