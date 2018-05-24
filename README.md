`Fjord` is a set of tools for functional programming in Ruby

# Installation

Add this line to your application's Gemfile:

```ruby
get 'fjord'
```

And then execute:


```
$ bundle
```

Or install it yourself as:

```
$ gem install fjord
```

# Examples

`Fjord` provides some functional primitives such as pointfree currying and functional composition out of the box:

```ruby
parse_json     = -> (json) { JSON.parse(json) }
symbolize_keys = -> (hash) { hash.reduce({}) { |acc, (k, v)| acc.merge(k.to_sym => v) } }
rename_keys    = curry.(-> (key_changes, hash) do
  hash.reduce({}) { |acc, (k, v)|
    if !key_changes[k].nil?
      acc.merge(key_changes[k] => v)
    else
      acc.merge(k => v)
    end
  }
end)

prepare_params = compose.(
  rename_keys.({ foo: :bar, bar: :foo}),
  symbolize_keys,
  parse_json,
)

params = prepare_params.(json_input)
```
