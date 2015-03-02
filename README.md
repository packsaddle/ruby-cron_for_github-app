# CronForGithub::App

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/packsaddle/ruby-cron_for_github-app)

[![Build Status](http://img.shields.io/travis/packsaddle/ruby-cron_for_github-app/master.svg?style=flat)](https://travis-ci.org/packsaddle/ruby-cron_for_github-app)

## Usage

After deploy, you visit:

dashboard -> YOUR APP -> resources -> scheduler ->

```
bundle exec cron-for-github ping --slug=YOU/YOUR_REPO
```

It works!

### One more thing...

If you want to clear cron branches before create branch, you can do below:

```
bundle exec cron-for-github clear --slug=YOU/YOUR_REPO && bundle exec cron-for-github ping --slug=YOU/YOUR_REPO
```

## Example

[Actual example](https://github.com/packsaddle/example-circle_ci-pull_request/branches/all)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

1. Fork it ( https://github.com/packsaddle/ruby-cron_for_github-app/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
