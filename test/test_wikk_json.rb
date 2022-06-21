#!/usr/local/bin/ruby
require_relative '../lib/wikk_json.rb' # Local test version
require 'wikk_json' # gem version

a = {
  'array' => [ 0, 1, 2, 3, 4, 'string', { 'hash' => 'value' }, true, false, [ 1 ]],
  'hash' => { 'this' => 'that', 'And' => 'everything', 'array' => [ 0, 1, 2, 3, 4 ] },
  'numeric' => 1.2,
  'string' => 'string',
  'true' => true,
  'false' => false,
  'nil' => nil,
  'time' => Time.now,
  'date' => Date.today,
  'datetime' => DateTime.now
}

puts a.to_j
