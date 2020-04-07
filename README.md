# Data moulder for Moustache templates

Moustache templates are logicless, so data needs to be shaped before it is used.
This makes it hard to use Moustache as an end-user templating language, since
users often want to mould data to their needs.

Wax brings a Liquid-like filter system to Moustache through JSON or YAML 
blueprints. End-users can then mould their data, create variables and include
additional data, before it's sent to Moustache.

Despite its purpose, Wax isn't bound to Moustache at all. It can be
used with any templating language. All it needs is JSON, a `Hash` or an object 
responding to `.to_h`. It will return a new `Hash` with the transformed data.

## Installation

Add the dependency to your `shard.yml`:

```yaml
dependencies:
  wax:
    github: tilishop/wax
```

Run `shards install`

## Usage

```crystal
require "wax"
```

DISCLAIMER: This shard is under heavy development, and nowhere near ready.

## Contributing

1. Fork it (<https://github.com/your-github-user/wax/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [wout](https://github.com/your-github-user) - creator and maintainer
