# Data moulder for Moustache templates

Moustache templates are logicless, so data needs to be shaped before it is used.
This makes it hard to use Moustache as an end-user templating language, since
users often want to mould data to their needs.

Wax brings a Liquid-like filter system to Moustache through JSON or YAML 
blueprints. End-users can then mould their data, create variables and include
additional data, before it's sent to Moustache.

Despite its purpose, Wax isn't bound to Moustache at all. It can be
used with any templating language. All it needs is a `Hash`, `JSON`, `YAML` or a
file. It will return a new `Hash` with the transformed data.

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

## Arguments for Moustache
Moustache has several benefits over Liquid. To name a few:
- it's easier to understand for end users
- it separates logic from templates
- it's fast (up to 30x faster)

Liquid templates can get messy. 

### Speed
When it comes to speed, Moustache is the clear winner.

#### Simple *Hello world!* example
```
          Hello world: Crustache render   1.24M (808.71ns) (± 8.50%)    624B/op      fastest
Hello world: Crustache parse and render 465.34k (  2.15µs) (± 9.12%)  1.51kB/op 2.66× slower

             Hello world: Liquid render  83.62k ( 11.96µs) (±14.42%)  2.34kB/op      fastest
   Hello world: Liquid parse and render  16.24k ( 61.59µs) (±18.96%)  10.0kB/op 5.15× slower
```

TODO: Add benchmarks with Mustache + Wax vs Liquid with filters

## Contributing

1. Fork it (<https://github.com/your-github-user/wax/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [wout](https://github.com/your-github-user) - creator and maintainer
