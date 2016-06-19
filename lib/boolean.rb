class TrueClass
  # @return [String] Json for the String, which is quoted self.
  def to_j(indent=0)
    "  "*indent + "true"
  end
end

class FalseClass
  # @return [String] Json for the String, which is quoted self.
  def to_j(indent=0)
    "  "*indent + "false"
  end
end

