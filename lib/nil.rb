class NilClass
  # @return [String] Json for the nil, which is "null"
  def to_j(indent = 0)
    "  "*indent + "null"
  end
end
