Icepick
=======

__Icepick__ bundles Pry with a set of plugins and useful configuration:

* [Pry][pry] is a better alternative to IRB
* [Pry Doc][pry-doc] includes documentation and source for Code Ruby components
* [Pry Debugger][pry-debugger] is a powerful debugger for Pry
* [Pry Stack Explorer][pry-stack_explorer] includes support for call stack navigation
* [Pry Rails][pry-rails] adds Rails helpers to Pry like `show-routes` and `show-models` 
* [Awesome Print][awesome_print] colorizes and formats output

##Usage

Ruby 1.9.2+ only, support for Rails 3 and Rails 4.  Add the following to your project's Gemfile:

```ruby
group :development, :test do
  gem 'icepick'
end
```

Now you're ready!  Just run `icepick` or `rails console` as you normally would.

[pry]:                 http://pry.github.com
[pry-doc]:             https://github.com/pry/pry-doc
[pry-stack_explorer]:  https://github.com/pry/pry-stack_explorer
[pry-debugger]:        https://github.com/nixme/pry-debugger
[pry-byebug]:          https://github.com/deivid-rodriguez/pry-byebug
[pry-rails]:           https://github.com/rweng/pry-rails
[awesome_print]:       https://github.com/michaeldv/awesome_print
