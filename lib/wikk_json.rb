module WIKK
  class Wikk_Json
    VERSION = '0.1.0'
  end
  
  require 'json'
  require_relative "nil.rb"
  require_relative "array.rb"
  require_relative "hash.rb"
  require_relative "string.rb"
  require_relative "numeric.rb"
  require_relative "boolean.rb"
end