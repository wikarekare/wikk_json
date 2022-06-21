require 'date'
require 'time'

# to_json for Date
class Date
  def to_j(indent = 0)
    '  ' * indent + "\"#{self}\""
  end
end

# to_json for Time
class Time
  def to_j(indent = 0)
    '  ' * indent + "\"#{self}\""
  end
end

# to_json for DateTime
class DateTime
  def to_j(indent = 0)
    '  ' * indent + "\"#{self}\""
  end
end
