# Virtus::Rspec

Rspec matcher to virtus gem

## Installation

Add this line to your application's Gemfile:

    gem 'virtus-rspec'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install virtus-rspec

## Usage

You need include the Virtus::Matchers in your rspec config file

```
RSpec.configure do |configuration|
  configuration.include Virtus::Matchers
end
```

You have now access to `have_attribute` matcher.

```
class Post
  include Virtus
  attribute :title, String
  attribute :first_name, String
  attribute :last_name, String
end

describe Post do
  it { should have_attribute(:title) }
  it { should have_attributes(:first_name, :last_name) }
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
