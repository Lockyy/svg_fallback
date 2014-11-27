# svg_fallback

[![Gem Version](https://badge.fury.io/rb/svg_fallback.svg)](http://badge.fury.io/rb/svg_fallback)

Using svg files is nice. What's not nice however is having to comply with Internet Explorer 8 and below when using svg files.

svg_fallback provides a wrapper to image_tag that detects the user's browser and if it is incompatible with svg files it will fallback to a compatible filetype.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'svg_fallback'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install svg_fallback

## Usage

The parameters sent to svg_fallback_tag are identical to the parameters passed to an image_tag. Just leave off the extension from your svg files.

When using this tag you will need to provide both an svg and png file of the same filepath to ensure this works. Of course if you are using fallback_extension to set an alternative filetype to fall back to you will need to provide an svg and a file of the given filetype instead of a png.

On a browser compatible with svg files:
```ruby
  svg_fallback_tag 'assets/images/cat' #=> <img src='/assets/images/cat.svg'>

  svg_fallback_tag 'assets/images/cat', class: 'cat-image' #=> <img src='/assets/images/cat.svg' class='cat-image'>

  svg_fallback_tag 'assets/images/cat', id: 'cat-image-1' #=> <img src='/assets/images/cat.svg' id='cat-image-1'>
```

On a browser that is NOT compatible with svg files:
```ruby
  svg_fallback_tag 'assets/images/cat' #=> <img src='assets/images/cat.png'>

  svg_fallback_tag 'assets/images/cat', fallback_extension: 'jpg' #=> <img src='/assets/images/cat.jpg'>

  svg_fallback_tag 'assets/images/cat', fallback_extension: 'bmp' #=> <img src='/assets/images/cat.bmp'>

  svg_fallback_tag 'assets/images/cat', class: 'cat-image' #=> <img src='/assets/images/cat.png' class='cat-image'>

  svg_fallback_tag 'assets/images/cat', id: 'cat-image-1' #=> <img src='/assets/images/cat.png' id='cat-image-1'>
```

## Contributing

1. Fork it ( https://github.com/lockyy/svg_fallback/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
