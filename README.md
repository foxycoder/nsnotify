# DEPRECATED

This gem is deprecated. Please use [`terminal-notifier-guard`](https://github.com/Springest/terminal-notifier-guard).
Install it manually

```
$ gem install terminal-notifier-guard
```

Or put it in your Gemfile

```ruby
group :development do
  gem 'guard'
  gem 'terminal-notifier-guard'
end
```

# nsnotify

Uses the built-in OS X Mountain Lion Notification Center to display messages.
It uses a nice app by [Eloy Durán](https://github.com/alloy/terminal-notifier)
that gives you command line access to the service.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'nsnotify'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nsnotify

## Usage

```ruby
require 'nsnotify'

# Use the notify method
Nsnotify.notify "Testing!", "Can you see me?!"

# Or one of the other convenience methods
# (success, error, warning, pending, info, broken)
Nsnotify.success "Yeah if this works!"
Nsnotify.error "Did something go wrong?!?"

# You can set the title to your app's name
# instead of that lame Nsnotify.
Nsnotify.app_name = "MyApp"
Nsnotify.success "Yeah, see me?!"
```

## Guard

I added a pull request for [Guard](https://github.com/guard/guard/pull/311) integration,
so you will have all your Guard notifications through the Notification Center by having
the following in your Gemfile:

```ruby
group :development, :test do
  gem 'guard'
  gem 'nsnotify'
end
```

## Notification Click Action

The default onclick behavior for a notification is open/focus `Terminal.app`. If you want to
change that to another terminal emulator you can change the `app bundle identifier`:

```ruby
# Focus iTerm2 when clicking a message.
Nsnotify.app_bundle_identifier = 'com.googlecode.iterm2'
```

I put it in `spec_helper.rb`, and it works fine with Guard and Spork.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
