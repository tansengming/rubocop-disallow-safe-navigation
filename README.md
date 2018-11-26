# Rubocop::DisallowSafeNavigation

The "safe navigation" operator `&.` makes it easier to work with and propagate nil values. This cop will disallow the safe navigation operator.

```ruby
# bad
foo&.bar
a.foo&.bar
```

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubocop-disallow_safe_navigation'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubocop-disallow_safe_navigation

## Usage

You need to tell RuboCop to load the extension. There are three
ways to do this:

### RuboCop configuration file

Put this into your `.rubocop.yml`.

```
require: rubocop-disallow_safe_navigation
```

Now you can run `rubocop` and it will automatically load the RuboCop
cops together with the standard cops.

### Command line

```bash
rubocop --require rubocop-disallow_safe_navigation
```

### Rake task

```ruby
RuboCop::RakeTask.new do |task|
  task.requires << 'rubocop-disallow_safe_navigation'
end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tansengming/rubocop-disallow_safe_navigation.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
