class String
  # Adds formatted json convertion
  #
  # @return [String] Json for the String, which is quoted self.
  def to_j(indent = 0)
    '  ' * indent + "\"#{self}\""
  end
end
