[![Code Climate](https://codeclimate.com/github/phereford/DPLibrary.png)](https://codeclimate.com/github/phereford/DPLibrary)
# DPLibrary

A simple ruby API wrapper around the [Digital Public Library of
America](http://http://dp.la/info/developers/)

## Installation

Add this line to your application's Gemfile:

    gem 'DPLibrary'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install DPLibrary

## Configuration

First step: Acquire an API KEY from dp.la. To do this, simply run the
following command from your terminal (replace YOUR_EMAIL with your
email):

```
curl -v -XPOST http://api.dp.la/v2/api_key/YOUR_EMAIL@example.com
```

Second step: before making any api calls you will need to set your api
key in your application. To do that, run:

```
DPLibrary.api_key = '<API KEY GOES HERE>'
```

## Usages

## ToDo's
* Write Tests
* Write up usage documentation
* Dry up lib files

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
