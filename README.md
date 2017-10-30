# ClearingNumbers

[![Build Status](https://travis-ci.org/cupofjoakim/clearingnumbers.png?branch=master)](https://travis-ci.org/cupofjoakim/clearingnumbers)

A small gem for figuring out which bank a swedish clearing number belongs to. It's just a ruby port of @believer's clearingnummer (https://github.com/believer/clearingnummer/).

Data is taken from [Swedish Bankers Association](http://www.swedishbankers.se/media/3535/1710_clearingnummer-institut.pdf) in 2017. If you know it's been updated, please make a PR with corrections.

## Installing
````
gem install clearingnumbers
````

## Usage
The gem has three functions, it's a small gem.

````ruby
require 'clearingnumbers'
````

### Identify a bank from a clearing number
````ruby
bank_name = ClearingNumbers.get_bank_name_from_clearing("8156-2")
````
or 
````ruby
bank_name = ClearingNumbers.get_bank_name_from_clearing(1234)
````
*Takes both ints and strings. Returns nil if no match is found*

### List all registered banks:
````ruby
ClearingNumbers.bank_names
````
*Returns array of bank names as strings*

### Get all valid clearing number ranges for a bank:
````ruby
ClearingNumbers.clearing_numbers_for_bank("Swedbank")
````
*Argument must be a string, returns array of ranges in hashes*
