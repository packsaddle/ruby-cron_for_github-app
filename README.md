# CronForGithub::App

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy?template=https://github.com/packsaddle/ruby-cron_for_github-app)

[![Build Status](http://img.shields.io/travis/packsaddle/ruby-cron_for_github-app/master.svg?style=flat)](https://travis-ci.org/packsaddle/ruby-cron_for_github-app)

## tl;dr

Kick GitHub **periodically** by creating branch with Heroku Scheduler.
This also wakes *web-hooks* up!

* Create a branch which name with prefix periodically (e.g. `cron_for_github/__UUID__`)
* Watch building branch name!
```bash
# Run only sunday (heroku scheduler kicks everyday)
if [[ "${BRANCH_NAME}" =~ ^cron_for_github/.* && $(date +%w) -eq 0 ]]; then
  # You want to do
fi
```

## Usage

After deploy, you visit:

dashboard -> YOUR APP -> resources -> scheduler ->

```
bundle exec cron-for-github ping --slug=YOU/YOUR_REPO
```

It works!

### Keep your branches clear

If you want to clear cron branches before create branch, you can do below:

```
bundle exec cron-for-github clear --slug=YOU/YOUR_REPO && bundle exec cron-for-github ping --slug=YOU/YOUR_REPO
```

## Example

[Actual example](https://github.com/packsaddle/example-circle_ci-pull_request/branches/all)

## Command

[command details](https://github.com/packsaddle/ruby-cron_for_github#command)

## Recommendation

Set `--verbose` option and watch metrics and logs with newrelic, logentries, etc., as your other app does.

```
bundle exec cron-for-github clear --slug=YOU/YOUR_REPO --verbose && bundle exec cron-for-github ping --slug=YOU/YOUR_REPO --verbose
```

## Motivation

We solve this! :)
[Build periodically travis-ci/travis-ci](https://github.com/travis-ci/travis-ci/issues/582)

## VS.

### [The Travis CI cron trigger](http://traviscron.pythonanywhere.com/)

Good service for Travis-CI.
The Travis CI cron trigger requires form submitting, and only for Travis-CI.

### [Tachikoma.io](http://tachikoma.io)

Dependency Update as a Service.
Tachikoma.io is only dependency update, so problem specific SaaS.
If you NEVER want to maintenance your server (include Heroku), Tachikoma.io suits you.

### [zapier](https://zapier.com/)/[ifttt](https://ifttt.com/)

We don't know how to achieve yet.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

## Contributing

1. Fork it ( https://github.com/packsaddle/ruby-cron_for_github-app/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
