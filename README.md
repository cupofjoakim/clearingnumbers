# ClearingNumbers

A small gem for figuring out which bank a swedish clearing number belongs to. It's just a ruby port of @believer's clearingnummer (https://github.com/believer/clearingnummer/).

Data is taken from [Swedish Bankers Association](http://www.swedishbankers.se/media/1253/1601_clearingnummer.pdf) in 2016. If you know it's been updated, please make a PR with corrections.

## Usage
The gem has three functions, it's a small gem.

````
require 'clearingnumbers'
````

### Identify a bank from a clearing number
````
bank_name = ClearingNumbers.get_bank_name_from_clearing("8156-2")
````
or 
````
bank_name = ClearingNumbers.get_bank_name_from_clearing(1234)
````
*Takes both ints and strings. Returns nil if no match is found*

### List all registered banks:
````
ClearingNumbers.bank_names
````
*Returns array of bank names as strings*

### Get all valid clearing number ranges for a bank:
````
ClearingNumbers.clearing_numbers_for_bank("Swedbank")
````
*Argument must be a string, returns array of ranges in hashes*
