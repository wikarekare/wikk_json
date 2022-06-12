class TrueClass
  # Adds formatted json convertion
  #
  # @return [String] Json for the String, which is quoted self.
  def to_j(indent = 0)
    '  ' * indent + 'true'
  end
end

class FalseClass
  # Adds formatted json convertion
  #
  # @return [String] Json for the String, which is quoted self.
  def to_j(indent = 0)
    '  ' * indent + 'false'
  end
end
