Icepick
=======

[![Gem Version](https://badge.fury.io/rb/icepick.png)](https://rubygems.org/gems/icepick) [![Code Climate](https://codeclimate.com/github/doomspork/icepick.png)](https://codeclimate.com/github/doomspork/icepick) [![Dependency Status](https://gemnasium.com/doomspork/icepick.svg)](https://gemnasium.com/doomspork/icepick)

[Changelog][changelog]

__Icepick__ bundles a set of useful tools, plugins, and configurations together:

* [Pry][pry] is a powerful alternative to IRB
* [Pry Doc][pry-doc] includes documentation and source for Core Ruby components
* [Pry Byebug][pry-byebug] brings the power of debugging to Pry
* [Pry Stack Explorer][pry-stack_explorer] adds support for call stack navigation
* [Awesome Print][awesome_print] colorizes and formats output

Ruby 2.0.0+ only.

## Usage

Install the gem and run `icepick` or `rails console` as you normally would.

## Options

The following options can be changed with a Rails initializer.  Example `config/initializers/icepick.rb`:

```ruby
if defined?(Icepick)
    # Change the name to something moar awesomer
    Icepick::Prompt.config.name = 'Iceaxe'
    # Make the layout look more like plain Pry
    Icepick::Prompt.config.main_layout = '[{line_num}] {name}({context}) {separator} '
end
```
------
### `separator`

Change the prompt separator to something other than the default: `>`

### `main_layout`

Allows you to configure the layout for the main Pry prompt, defaults to `'{line_num}. {name}@{context} {separator} '`.  The following placeholders are available for use in the layout:

* `name`      - The prompt name
* `line_num`  - Current line number, the Pry input array size
* `context`   - Path of the current context (eg. `cd Pry::CommandSet` #=> `/Pry/CommandSet`)
* `separator` - Prompt separator

### `wait_layout`

Configuration for the Pry wait prompt, defaults to `'{spaces} {separator} '`.  In addition to the above placeholders, there are a few available exclusively to the wait prompt:

* `spaces` - String of spaces equal to the length to the main prompt without the separator
* `dots`   - Similar to the above but dots

## Contributing

Feedback and features welcome!  Please make use of [Issues](https://github.com/doomspork/orwell/issues) and [Pull Requests](https://github.com/doomspork/orwell/pulls), all code must have accompanying specs.

## Author/Contact

Icepick is written and maintained by [@doomspork](github.com/doomspork) with the help of [@jamesbrink](github.com/jamesbrink).

## License

Icepick is made available under the [MIT](http://opensource.org/licenses/MIT) License.

[issues]:              https://github.com/doomspork/icepick/issues
[pullrequest]:         https://github.com/doomspork/icepick/pulls
[changelog]:           https://github.com/doomspork/icepick/blob/master/CHANGELOG.md
[pry]:                 http://pry.github.com
[pry-doc]:             https://github.com/pry/pry-doc
[pry-stack_explorer]:  https://github.com/pry/pry-stack_explorer
[pry-byebug]:          https://github.com/deivid-rodriguez/pry-byebug
[awesome_print]:       https://github.com/michaeldv/awesome_print
