Icepick
=======
© {[doomspork](https://github.com/doomspork)} 2014

Current version is `1.0.0` [Changelog][changelog].

__Icepick__ bundles a set of useful tools, plugins, and configurations together:

* [Pry][pry] is a powerful alternative to IRB
* [Pry Doc][pry-doc] includes documentation and source for Core Ruby components
* [Pry Debugger][pry-debugger] brings the power of debugger to Pry 
* [Pry Stack Explorer][pry-stack_explorer] adds support for call stack navigation
* [Pry Rails][pry-rails] adds Rails helpers to Pry like `show-routes` and `show-models` 
* [Awesome Print][awesome_print] colorizes and formats output

Ruby 2.0.0+ only. Support included for Rails 3 and Rails 4. 

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
### `name`

Configures the prompt name, defaults to `Icepick`

### `separator`

Change the prompt separator to something other than the default: `>`

### `formatted`

Color and format the prompt, defaults to `true`

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

## Contributions

Feel free to open [Issues][issues] or submit [Pull Requests][pullrequest] for consideration.  

[issues]:              https://github.com/doomspork/icepick/issues
[pullrequest]:         https://github.com/doomspork/icepick/pulls
[changelog]:           https://github.com/doomspork/icepick/blob/master/CHANGELOG.md
[pry]:                 http://pry.github.com
[pry-doc]:             https://github.com/pry/pry-doc
[pry-stack_explorer]:  https://github.com/pry/pry-stack_explorer
[pry-byebug]:          https://github.com/deivid-rodriguez/pry-byebug
[pry-rails]:           https://github.com/rweng/pry-rails
[awesome_print]:       https://github.com/michaeldv/awesome_print
