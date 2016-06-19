#Extend simple key => string Hash to output nicely formated json for SQL output
class Hash
  # @return [String] Json for the Hash, and recurse for each value in the Hash
  def to_j(indent=0)
    s = "{\n"
      self.each do |k,v| 
        if v.class == Array || v.class == Hash 
          s += "  "*(indent+1) + "\"#{k}\": #{v.to_j(indent+1)},\n"
        else
          s += "  "*(indent+1) + "\"#{k}\": #{v.to_j},\n"
        end
    end
    s[-2] = " " #remove last ,
    s += "  "*indent + "}"
    return s
  end 
end
