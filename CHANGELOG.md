## 1.1.1 (2014-05-04)

* Updated project dependencies

## 1.1.0 (2014-04-26)

* Removed out-of-box support for Rails.  This includes removing pry-rails and railties dependencies.
* Removed `formatted` configuration option; format all the things!
* Removed `name` from prompt and configuration

## 1.0.0 (2014-04-25)

* Replaced pry-debugger with pry-byebug. This change breaks support for Ruby versions older than 2.0.0

## 0.2.0 (2014-01-01)

* Prompt layout now more configurable.  Added a new dependency on [colorize][colorize].

## 0.1.0 (2013-12-31)

* First and last release of the year.  Bundle [pry][pry] with [pry-doc][pry-doc], [pry-debugger][pry-debugger], [pry-stack_explorer][pry-stack_explorer], and [pry-rails][pry-rails].  [Awesome print][awesome_print] for colorized and formatted output.  Configured as Rails' console when applicable.

[pry]:                 http://pry.github.com
[pry-doc]:             https://github.com/pry/pry-doc
[pry-stack_explorer]:  https://github.com/pry/pry-stack_explorer
[pry-byebug]:          https://github.com/deivid-rodriguez/pry-byebug
[pry-rails]:           https://github.com/rweng/pry-rails
[awesome_print]:       https://github.com/michaeldv/awesome_print
[colorized]:           https://github.com/fazibear/colorize
