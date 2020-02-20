# Cotoha

[COTOHA API](https://api.ce-cotoha.com/contents/index.html) client for Ruby (unofficial)

![RSpec](https://github.com/tanaken0515/cotoha-ruby/workflows/PSpec/badge.svg?branch=master)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cotoha'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install cotoha

## Usage

### Authentication

```ruby
# https://api.ce-cotoha.com/home  
client_id = 'xxxxx'
client_secret = 'xxxxx'

client = Cotoha::Client.new(client_id: client_id, client_secret: client_secret)
client.create_access_token
# => {"access_token"=>"xxxxx", "token_type"=>"bearer", "expires_in"=>"86399", "scope"=>"", "issued_at"=>"1582159764808"}
```

Or, if you have identified the token in advance, 

```ruby
client = Cotoha::Client.new(token: 'xxxxx')
```

### Supported API Endpoints
`cotoha` gem provides APIs as instance method.

Example:
```ruby
client.user_attribute(document: '渋谷でエンジニアとして働いています。')
# {"result"=>
#   {"civilstatus"=>"既婚",
#    "hobby"=>["COOKING", "INTERNET", "MOVIE", "SHOPPING"],
#    "location"=>"関東",
#    "moving"=>["RAILWAY"],
#    "occupation"=>"会社員"},
#  "status"=>0,
#  "message"=>"OK"}

client.sentiment(sentence: 'ゲームをするのが好きです。')
# {"result"=>
#   {"sentiment"=>"Positive",
#    "score"=>0.4714220003626205,
#    "emotional_phrase"=>[{"form"=>"好きです", "emotion"=>"P"}]},
#  "status"=>0,
#  "message"=>"OK"}
```

Refer to the [lib/cotoha/endpoint](https://github.com/tanaken0515/cotoha-ruby/tree/master/lib/cotoha/endpoint) for the list of all available endpoints.

Also check out the official [API reference \| COTOHA API](https://api.ce-cotoha.com/contents/reference/apireference.html).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/tanaken0515/cotoha-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/cotoha/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Cotoha project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/cotoha/blob/master/CODE_OF_CONDUCT.md).
