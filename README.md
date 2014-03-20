# Psych::Inherit::File [![Build Status](https://travis-ci.org/Asquera/psych-inherit-file.svg?branch=master)](https://travis-ci.org/Asquera/psych-inherit-file)

A psych handler and parser that allows inherit other files within YAML files.

It is an extraction from [elasticsearch-rake-tasks](http://github.com/asquera/elasticsearch-rake-tasks).

Supports JRubys Psych implementation.

## Installation

Add this line to your application's Gemfile:

    gem 'psych-inherit-file'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install psych-inherit-file

## Usage

Just use the `Parser` class instead of your YAML parser:

```ruby
parser = Psych::Inherit::File::Parser.new
parser.parse_file('myfile.yaml')
```

This parser allows you to include the following tag in your YAML:

```yaml
# bar.yml
---
name: &string_analyzed
  type: string
```

```
# foo.yml
properties:
  inherit: !file "bar.yml"
  surname: *string_analyzed
```

This allows you to share definitions between files. The "inherit" node will be replaced by inherited file.

## Contributors

* [Sebastian Ziebell](http://github.com/zebel) (original implementation)
* [Florian Gilcher](http://github.com/skade) (extraction)
* [Nico Hagenburger](http://github.com/hagenburger) (quality control)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
