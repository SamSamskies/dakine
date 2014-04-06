# Dakine v. 0.0.1

Translates English into Hawaiian Pidgin English. The first version of this gem currently replaces the word 'the' with 'da' and all nouns with 'da kine'.

## Installation

Add this line to your application's Gemfile:

    gem 'dakine'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dakine

## Usage

```ruby
Dakine.translate "Alice chased the big fat cat. Kimo went to the mall."
=> "da kine chased da big fat da kine. da kine went to da da kine."
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
