# CommonRegex

Collection of regular expressions in Ruby.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'common-regex'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install common-regex

## Usage


```ruby
  # in model
  validates_format_of :email, :with => CommonRegex::EMAIL
  validates_format_of :phone_number, :with => CommonRegex::E164PHONE
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/common-regex/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
