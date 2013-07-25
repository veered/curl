# DESCRIPTION

Installs [cURL](http://curl.haxx.se/) client.


# REQUIREMENTS

## Supported Platforms

The following platforms are supported by this cookbook, meaning that the recipes run on these platforms without error:

* Windows
* Ubuntu
* Debian

# RECIPES

* `curl` - The default recipe.

# USAGE

Just include `curl` in your node's `run-list`:

```json
{
    "name":"my_node",
    "run_list": [
        "recipe[curl]"
    ]
}
```

# ATTRIBUTES

The attributes only apply to a Windows installation.

## Basic Settings

None


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Authors
Lucas Hansen

