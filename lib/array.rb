#Extend Array to output nicely formated json.
class Array
  # @return [String] Json array
  def to_j(indent=0)
    s = "[\n"
    self.each do |v| 
      if v.class == Array || v.class == Hash 
        s += "  "*(indent+1) + "#{v.to_j(indent+1)},\n"
      else
        s += "  "*(indent+1) + "#{v.to_j},\n"
      end
    end
    s[-2] = " " #remove last ,
    s += "  "*indent + "]"
    return s
  end 
end
