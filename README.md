# LighthouseGemDenylist

When included in your Ruby project, this gem will prevent the installation of gems which are prohibited in Lighthouse projects.

See the full list of prohibited gems in [gem_denylist.yml](./gem_denylist.yml).

## Installation and usage

This gem is intended to be used in your project's `Gemfile` with a `git` source, like this:

```ruby
source 'https://rubygems.org'

gem 'lighthouse_gem_denylist', git: 'git@github.com:department-of-veterans-affairs/lighthouse_gem_denylist.git', branch: 'main'
```

With this line in place, `bundle install` will fail if you attempt to include any gems from [gem_denylist.yml](./gem_denylist.yml).

## Development

After checking out the repo, run `bundle install` to install dependencies. Then, test the plugin by running `bundle install` in any of the directories in the [examples](./examples) folder.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/department-of-veterans-affairs/lighthouse_gem_denylist.
