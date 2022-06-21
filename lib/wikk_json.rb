module WIKK
  # Adds formatted json convertion
  #
  class Wikk_Json
    VERSION = '0.1.5'
  end

  require 'json'
  require_relative 'nil.rb'
  require_relative 'array.rb'
  require_relative 'hash.rb'
  require_relative 'string.rb'
  require_relative 'numeric.rb'
  require_relative 'boolean.rb'
  require_relative 'datetime.rb'
end
