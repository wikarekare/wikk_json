class Numeric
  # Adds formatted json convertion
  #
  # @return [String] Json for the numeric value
  def to_j(indent = 0)
    '  ' * indent + self.to_s
  end
end
