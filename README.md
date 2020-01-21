# weese
weese is a simple Ruby interface to the [Washington Metropolitan Area Transit Authority API](https://developer.wmata.com).

## Contents
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
    - [Getting Started](#getting-started)
    - [Design](#design)
    - [Using `MetroRail`](#using-MetroRail)
    - [Using `MetroBus`](#using-MetroBus)
- [Testing](#testing)
- [Dependencies](#dependencies)
- [Contact](#contact)
- [License](#license)

## Requirements
 - Ruby 2.5+

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'weese'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install weese

## Usage

### Getting Started
```ruby
require 'weese'

client = Weese::Rail::MetroRail.new api_key

trains = client.next_trains Weese::Rail::Station::A01
```

### Design
weese breaks the WMATA API into two components: `MetroRail` and `MetroBus`.

#### `MetroRail`
Provides access to all MetroRail related endpoints.

##### Using `MetroRail`
See [Getting Started](#getting-started)

#### `MetroBus`
Provides access to all MetroBus related endpoints.

##### Using `MetroBus`
```ruby
require 'weese'

client = Weese::Rail::MetroBus.new api_key

routes = client.routes
```

## Testing
All testing is done with [vcr](https://github.com/vcr/vcr), and can be run with `rake test`.

## Dependencies
- Faraday

## Contact
Feel free to email questions and comments to [emma@emma.sh](mailto:emma@emma.sh)

## License
weese is released under the MIT license. [See LICENSE](https://github.com/emma-k-alexandra/weese/blob/master/LICENSE) for details.