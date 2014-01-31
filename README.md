# Pipeable

A play at Unix Piping in Ruby for kicks. It helps to break up some more exotic logic and chaining. 

It can be used to play with a value in a method chain and return whatever you want out of the block. Personally I'm
still toying with how it can be used and working to find clever tricks with it.

_That being said, this is a 5 minute hack. You've been warned._

Piping is simple, we take the object and put a pipe on it:
```ruby
1.pipe { |x| "#{x} is great!" }
# => '1 is great!'
```

How do you get going with pipe?
```ruby
include Pipeable
```
...and your object is ready to go!

## Installation

Add this line to your application's Gemfile:

    gem 'pipeable'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install pipeable

## Usage

Slap a pipe on the end of it!

## Contributing

1. Fork it ( http://github.com/baweaver/pipeable/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
