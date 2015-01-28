# OmniAuth GitCafe OAuth2

GitCafe OAuth2 Strategy for OmniAuth 1.0.

## Installing

Add to your `Gemfile`:

```ruby
gem 'omniauth-gitcafe-oauth2'
```

Then `bundle install`.

Or install it yourself as:

    $ gem install omniauth-gitcafe-oauth2

## Usage

`OmniAuth::Strategies::GitCafe` is simply a Rack middleware. Read the OmniAuth 1.0 docs for detailed instructions: https://github.com/intridea/omniauth.

Here's a quick example, adding the middleware to a Rails app in `config/initializers/omniauth.rb`:

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :gitcafe, ENV['GITCAFE_KEY'], ENV['GITCAFE_SECRET'], scope: "read, public"
end
```

## Authentication Hash

Here's an example *Authentication Hash* available in `request.env['omniauth.auth']`:

```ruby
{
  "provider"=>"gitcafe",
  "uid"=>"548e8630c54d2d29f6000002",
  "info"=>{
    "id"=>"548e8630c54d2d29f6000002",
    "email"=>"test@example.com",
    "username"=>"test",
    "fullname"=>nil,
    "location"=>nil,
    "url"=>nil,
    "avatar_url"=>"http://gravatar.com/avatar/76e23ac36354d843ba34ea458c19f648?default=identicon&size=60", "company"=>nil, "public_repos"=>5,
    "followers"=>0,
    "following"=>0,
    "name"=>"test@example.com"
 },
  "credentials"=>{
    "token"=>"d1aa55539cf7d732ae81f6663080f294bb44dc179d77039166071ab44a268d01",
    "expires"=>false
  },
  "extra"=>{
    "raw_info"=>
      {
        "id"=>"548e8630c54d2d29f6000002",
        "username"=>"test",
        "email"=>"test@example.com",
        "fullname"=>nil,
        "location"=>nil,
        "url"=>nil,
        "avatar_url"=>"http://gravatar.com/avatar/76e23ac36354d843ba34ea458c19f648?default=identicon&size=60", "company"=>nil,
        "public_repos"=>5,
        "followers"=>0,
        "following"=>0,
        "created_at"=>"2014-12-15T06:56:48Z",
        "updated_at"=>"2015-01-26T16:41:02Z"
      }
    }
}
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## License

Copyright (c) 2012

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
