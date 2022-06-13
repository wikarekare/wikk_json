# Extend Array to output nicely formated json.
class Array
  # Adds formatted json convertion
  #
  # @return [String] Json array
  def to_j(indent = 0)
    return "[]\n" if self.length == 0

    s = "[\n"
    self.each do |v|
      s += if v.instance_of?(Array) || v.instance_of?(Hash)
             '  ' * (indent + 1) + "#{v.to_j(indent + 1)},\n"
           else
             '  ' * (indent + 1) + "#{v.to_j},\n"
           end
    end
    s[-2] = ' ' # remove last ,
    s += '  ' * indent + ']'
    return s
  end
end
